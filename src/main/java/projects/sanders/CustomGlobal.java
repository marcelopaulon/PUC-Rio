/*
BSD 3-Clause License

Copyright (c) 2007-2013, Distributed Computing Group (DCG)
                         ETH Zurich
                         Switzerland
                         dcg.ethz.ch
              2017-2018, André Brait

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
package projects.sanders;

import projects.sanders.nodes.nodeImplementations.DistrictRepository;
import projects.sanders.nodes.nodeImplementations.SandersNode;
import sinalgo.nodes.Node;
import sinalgo.runtime.AbstractCustomGlobal;
import sinalgo.tools.logging.Logging;

import javax.swing.*;
import java.io.IOException;
import java.util.Collection;
import java.util.logging.Logger;

/**
 * This class holds customized global state and methods for the framework. The
 * only mandatory method to overwrite is <code>hasTerminated</code> <br>
 * Optional methods to override are
 * <ul>
 * <li><code>customPaint</code></li>
 * <li><code>handleEmptyEventQueue</code></li>
 * <li><code>onExit</code></li>
 * <li><code>preRun</code></li>
 * <li><code>preRound</code></li>
 * <li><code>postRound</code></li>
 * <li><code>checkProjectRequirements</code></li>
 * </ul>
 *
 * @see AbstractCustomGlobal for more details. <br>
 * In addition, this class also provides the possibility to extend the
 * framework with custom methods that can be called either through the menu
 * or via a button that is added to the GUI.
 */
public class CustomGlobal extends AbstractCustomGlobal {

    private Logging metrics = Logging.getLogger("sanders87-metrics.csv");
    private Logging log = Logging.getLogger("sanders87-log.txt");
    private Collection<SandersNode> registeredNodes;

    long allRelinquishMessages = 0;

    long currentRound = 0;

    @Override
    public boolean hasTerminated() {
        return false;
    }

    @Override
    public void preRun() {
        log.logln("Starting sanders87 simulation");
        metrics.logln("Round,RelinquishCountRound,RelinquishCountSim");
    }

    @Override
    public void preRound() {
        currentRound++;
    }

    @Override
    public void postRound() {
        log.logln("Post round");

        long roundRelinquishMessages = 0;

        if (registeredNodes == null) {
            registeredNodes = SandersNode.getRegisteredNodes();
        }

        for (SandersNode node : registeredNodes) {
            roundRelinquishMessages += node.getCountRelinquishThisRound();
        }

        allRelinquishMessages += roundRelinquishMessages;

        metrics.logln(currentRound + "," + roundRelinquishMessages + "," + allRelinquishMessages);
    }

    @Override
    public void checkProjectRequirements() {

    }

    /**
     * An example of a method that will be available through the menu of the GUI.
     */
    @GlobalMethod(menuText = "Echo")
    public void echo() {
        // Query the user for an input
        String answer = JOptionPane.showInputDialog(null, "This is an example.\nType in any text to echo.");
        // Show an information message
        JOptionPane.showMessageDialog(null, "You typed '" + answer + "'", "Example Echo",
                JOptionPane.INFORMATION_MESSAGE);
    }

    @CustomButton(buttonText = "Pcs", toolTipText = "Probability of requesting CS")
    public void pcs() {
        String s = JOptionPane.showInputDialog("Probability of requesting CS:");
        if (s != null && s.length() > 0) {
            SandersNode.pcs = Double.parseDouble(s);
        }

        currentRound = 0;
        allRelinquishMessages = 0;
    }

    @CustomButton(buttonText = "Pls", toolTipText = "Probability of leaving CS")
    public void pls() {
        String s = JOptionPane.showInputDialog("Probability of leaving CS:");
        if (s != null && s.length() > 0) {
            SandersNode.pls = Double.parseDouble(s);
        }

        currentRound = 0;
        allRelinquishMessages = 0;
    }

    @CustomButton(buttonText = "IN", toolTipText = "Input file")
    public void in() {
        try {
            String s = JOptionPane.showInputDialog("Input file (e.g.: k9.txt):");
            if (s != null && s.length() > 0) {
                DistrictRepository.initialize(s);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        currentRound = 0;
        allRelinquishMessages = 0;
    }

    @CustomButton(buttonText = "AUTO", toolTipText = "Automatic CS in/out toggle")
    public void auto() {
        SandersNode.auto = !SandersNode.auto;
        if (SandersNode.auto) {
            JOptionPane.showMessageDialog(null, "Auto mode enabled", "Auto mode", JOptionPane.INFORMATION_MESSAGE);
        }
        else {
            JOptionPane.showMessageDialog(null, "Auto mode disabled", "Auto mode", JOptionPane.INFORMATION_MESSAGE);
        }
    }

    @CustomButton(buttonText = "RESET", toolTipText = "Reset node states")
    public void reset() {
        currentRound = 0;
        allRelinquishMessages = 0;

        registeredNodes = SandersNode.getRegisteredNodes();

        for (SandersNode node : registeredNodes) {
            node.reset();
        }
    }
}
