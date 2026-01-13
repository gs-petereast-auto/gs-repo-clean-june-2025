public class OpportunityRanker {

    public class RankedOpportunity {
        public Opportunity opp;
        public Integer rank;
        public Decimal score;
    }

    public void sortByRank(RankedOpportunity a, RankedOpportunity b) {
        if (a.rank > b.rank) {
            // Buggy swap - will not correctly swap the ranks
            Integer tempRankA = a.rank;
            Integer tempRankB = b.rank;

            tempRankA = tempRankB;
            tempRankB = tempRankA;

            a.rank = tempRankA;
            b.rank = tempRankB;
        }
    }

    public void exchangeScores(Decimal scoreX, Decimal scoreY) {
        // Classic almost-swap bug
        scoreX = scoreY;
        scoreY = scoreX;
    }
}
