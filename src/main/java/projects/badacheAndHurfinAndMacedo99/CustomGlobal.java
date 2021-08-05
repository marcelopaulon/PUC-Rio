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
package projects.badacheAndHurfinAndMacedo99;

import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.MSSNode;
import projects.badacheAndHurfinAndMacedo99.nodes.nodeImplementations.Resettable;
import sinalgo.nodes.Node;
import sinalgo.runtime.AbstractCustomGlobal;
import sinalgo.runtime.SinalgoRuntime;
import sinalgo.tools.Tools;

import javax.swing.*;

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

    long currentRound = 0;

    @Override
    public boolean hasTerminated() {
        return false;
    }

    @Override
    public void preRun() {
    }

    @Override
    public void preRound() {
        currentRound++;
    }

    @Override
    public void postRound() {
    }

    @Override
    public void checkProjectRequirements() {

    }

    @CustomButton(buttonText = "RESET", toolTipText = "Reset node states")
    public void reset() {
        currentRound = 0;

        for (Node node : SinalgoRuntime.getNodes()) {
            if (node instanceof Resettable) {
                ((Resettable) node).reset();
            }
        }
    }

    @CustomButton(buttonText = "ALPHA", toolTipText = "Change alpha value (will reset the simulation)")
    public void changeAlpha() {
        String s = JOptionPane.showInputDialog("New alpha value (default=3):");
        try {
            MSSNode.alpha = Integer.parseInt(s);
            reset();
        } catch (NumberFormatException e) {
            Tools.appendToOutput("[ERROR] Unable to set alpha value - invalid alpha");
        }
    }
}
