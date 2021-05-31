'reach 0.1';

export const main = Reach.App(() => {
  const Host = Participant('Host', {
    setCompetitionAttributes: Fun([], Object({
      firstPlacePrize: UInt,
      secondPlacePrize: UInt,
      thirdPlacePrize: UInt,
      entryFee: UInt,
      startOfVerificationPhase: UInt,
      startOfVotingPhase: UInt,
      endOfCompetition: UInt
    }))
  });
  const Entrants = Participant('Entrants', {
    enterCompetition: Fun([], Object({
      submission: String
    }))
  });

  deploy();
});
