public class ScoreKey {
	public String k1;
	public int k1Count;
	public String k2;
	public int k2Count;

	public ScoreKey(String s1, int s1Count, String s2, int s2Count) {
		k1 = s1;
		k2 = s2;
		k1Count = s1Count;
		k2Count = s2Count;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		}

		final ScoreKey sk = (ScoreKey) obj;

		if (sk.k1.equals(k1) && sk.k2.equals(k2))
			return true;
		if (sk.k1.equals(k2) && sk.k2.equals(k1))
			return true;

		return false;
	}

	@Override
	public int hashCode() {
		int shift = 0;
		int hash = 1;

		hash ^= (k1.hashCode() << shift) | (k1.hashCode() >> (32 - shift)) & (1 << shift - 1);
		shift = (shift + 1) % 32;
		hash ^= (k2.hashCode() << shift) | (k2.hashCode() >> (32 - shift)) & (1 << shift - 1);

		return hash;
	}
}