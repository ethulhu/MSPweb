module OneOhOneTalks(talks) where

{-
talks :: [(Int, Talk)]
talks = reverse $ zipWith (,) [(0::Int)..] $ reverse [

  Talk {
     date       = (UTCTime (fromGregorian 2017 10 27)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Johannes Marti",
     institute  = "Universität Bremen",
     speakerurl = "http://johannesmarti.com/",
     insturl    = "http://www.informatik.uni-bremen.de/tdki/",
     title      = "Size-Matters in the Modal mu-Calculus",
     abstract   = "I talk about three methods for measuring the size of formulas in the modal mu-calculus and explore how the choice between them influences the complexity of computations on formulas. Especially, I focus on the guarded transformation, which is a simple syntactic transformation on formulas that is commonly assumed to be polynomial but has recently been shown to require exponential time.\n\nI will complain about the mess in the literature and present two of our (Clemens, Yde and me) own preliminary results:\n\n1) There is a polynomial guarded transformation if we measure the input formula in the number of its subformulas and measure the output formula in the size of its closure.\n\n2) If there is a polynomial guarded transformation where we measure the input formula in the size of its closure then there is a polynomial algorithm for solving parity games. Hence finding such a transformation is at least as hard as solving parity games, which is commonly believed to be quite hard.\n\nWe employ an automata-theoretic approach that relates the different measures for the size of a formula to different constraints on the transition structure of an automaton corresponding to the formula.\n\nThis is a very technical talk but there will be many pictures!",
     location   = "LT1310",
     material   = [] }
  ,


  SpecialEvent {
      date  = (UTCTime (fromGregorian 2017 10 11)
                      (timeOfDayToTime (TimeOfDay 12 00 0))),
     title = "SPLS",
     url = "http://simonjf.com/spls-oct2017/",
     location = "Informatics Forum, Edinburgh",
     locationurl= "",
     description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 09 22)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Conor McBride",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/conor.mcbride/",
     insturl    = "",
     title      = "Bidirectional Martin-L&ouml;f 1971",
     abstract   = "Per Martin-L&ouml;f's 1971 Theory of Types is the ancestor of the type systems used today in Agda, Coq, Idris, NuPRL, and many other variations on the theme of dependent types. Its principal virtue is its simplicity: it has very few moving parts (but they move quite a lot). Its well known principal vice is its inconsistency: you can write a looping program inhabiting any type (thus 'proving' any proposition). I'll be talking about the design principles for constructing dependent type systems which are bidirectional &mdash; clearly split into a type  checking part and a type synthesis part. By following these principles, it gets easier to establish good safety properties of these systems. In particular, I'll sketch how to keep type safety (\"well typed programs don't go wrong\") separate from normalization (\"all computations terminate\"). Martin-L&oumlf's 1971, reformulated bidirectionally, makes a good example, because it's small and type-safe, but not normalizing.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 09 29)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Ben Price",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/benjamin.price",
     insturl    = "",
     title      = "Worlds",
     abstract   = "Building on last week's introduction to Martin-L&ouml;f 1971, we describe a toy type theory which not only accounts for what type terms have, but also where they live. This extra information can be interpreted as where (physically) data lives, at what phase (typechecking vs runtime) it exists, when it exists, or who has access to the data.\n\nIn return for caring about these \"worlds\" describing where data lives, we get applications to distributed computing and erasure for efficient code generation, with future work to consider productivity and security.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 10 06)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Peter Hancock",
     institute  = "",
     speakerurl = "http://docs.hancock.fastmail.fm/",
     insturl    = "",
     title      = "Tetration",
     abstract   = "In ghci, you can write something like <div class='centered'><tt>let two f = f . f in two two two two (+1) 0</tt></div> and it will print \"65536\". If you write something like <div class='centered'><tt>let two f = f . f ; four = two . two in four ($ two) id (+1) 0</tt></div> it will print \"Occurs check: cannot construct the infinite type: a ~ a -> a\".\n\nCan haskell not count to four?(*)\n\nThe topic is the compact representation of unfeasibly large numbers using a pure (Glaswegian?) universe.  Some excursions into the hinterland of the topic are likely.\n\nBy the way, tetration is the function m n |-> n ^ .. ^ n with m n's.\n\n(*) No doubt mad haskell mambo or pragma exists that will trick it into counting up to four.  I will reward the most amusing/revolting demonstration with a large (reasonably priced) malt whisky.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 10 13)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Simone Barlocco",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Coalgebraic Learning",
     abstract   = "Automata learning is a well known technique to infer a finite state machine from a set of observations. One important algorithm for automata learning is the L* algorithm by Dana Angluin. In this 101 I will present a new perspective on L* using ideas from coalgebra and modal logic. After a brief recap of how L* works, I will describe a generalisation of the L* algorithm to the coalgebraic level. I will conclude my talk with two concrete instances of the general framework: the learning of Mealy machines and of bisimulation quotients of probabilistic transition systems. Joint work with Clemens Kupke.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 10 20)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "Measuring the sizes of trees",
     abstract   = "I'll talk about a way of measuring the sizes of trees using weighted tree automata, in a compositional way that works well with pattern matching. This is based on some work by Georg Moser and Martin Hofmann.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 11 17)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan",
     insturl    = "",
     title      = "Deep Learning",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 12 15)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "James/Fred",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "TBA",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 11 10)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Alasdair Lambert",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Infinite Iteration of Games",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 12 22)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Fred/James",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "TBA",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 11 24)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Neil Ghani",
     institute  = "MSP",
     speakerurl = "http://personal.cis.strath.ac.uk/neil.ghani",
     insturl    = "",
     title      = "TBA",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 12 01)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "The Platypus team",
     institute  = "MSP",
     speakerurl = "https://github.com/msp-strath/platypus",
     insturl    = "",
     title      = "Platypus demo",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 12 06)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Chung-Kil Hur",
     institute  = "Seoul National University",
     speakerurl = "http://sf.snu.ac.kr/gil.hur/",
     insturl    = "http://sf.snu.ac.kr/",
     title      = "TBA",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,


  SpecialEvent {
     date  = (UTCTime (fromGregorian 2017 09 14)
                      (timeOfDayToTime (TimeOfDay 11 40 0))),
     title = "MSP101 Planning session",
     url = "",
     location = "LT1310",
     locationurl= "",
     description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 09 11)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Andrea Vezzosi",
     institute  = "Chalmers",
     speakerurl = "http://www.cse.chalmers.se/~vezzosi/",
     insturl    = "http://www.chalmers.se/en/departments/cse/Pages/default.aspx",
     title      = "Adding Cubes to Agda",
     abstract   = "Cubical Type Theory (CTT) provides an extension of Martin-L&ouml;f Type Theory (MLTT) where we can interpret the univalence axiom while preserving the canonicity property, i.e. every closed term actually computes to a value. The typing and equality rules of CTT come as a fairly well-behaved extension of the ones of MLTT and the denotational model and prototype implementation help clarifying the system further.\n\nGiven the above it felt reasonable to introduce the features of CTT into a more mature proof assistant like Agda, and this talk reports the status of this endeavour. In short:\n<ul><li>The univalence axiom is proven as a theorem and we successfully tested its computational behavior on small examples.</li><li><tt>comp</tt> computes for any parametrized data or record types, including coinductive ones, but it is stuck for inductive families.</li><li>The interaction of the path type and copatterns gives extensionality principles for coinductive records.</li><li>The interval <tt>I</tt> is an actual type, we also have restriction types <tt>A[&phi; &mapsto; u]</tt> and types for partial elements <tt>Partial &phi; A</tt>. Their sort makes sure <tt>comp</tt> does not apply to them.</li></ul>\nExamples are collected at <a href='https://github.com/Saizan/cubical-demo'>https://github.com/Saizan/cubical-demo</a>.",
     location   = "LT1101 (Board room)",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 09 06)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan",
     insturl    = "",
     title      = "Binding and Substitution in String Diagrams",
     abstract   = "In the categorical semantics of (e.g.) the simply typed lambda calculus substitution of a variable by a term is achieved by composing morphisms.  What is the equivalent notion in diagrammatic languages?  What even is a \"variable\" in this context?  I'll sketch some (pretty) rough ideas for the beginnings of a “functional language” of diagrams including substitution, binding, and pattern matching.  It turns out to all be about operads and co-operads.",
     location   = "LT1310",
     material   = [] }
  ,


  SpecialEvent {
      date  = (UTCTime (fromGregorian 2017 07 10)
                      (timeOfDayToTime (TimeOfDay 10 00 0))),
     title = "Open Games Workshop",
     url = "http://msp.cis.strath.ac.uk/opengames-2017/",
     location = "LT1415",
     locationurl= "",
     description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 07 05)
                           (timeOfDayToTime (TimeOfDay 14 00 00))),
     speaker    = "Noam Zeilberger",
     institute  = "Birmingham",
     speakerurl = "http://noamz.org/",
     insturl    = "http://www.cs.bham.ac.uk/",
     title      = "Some enumerative, topological, and algebraic aspects of linear lambda calculus",
     abstract   = "Enumeration of graphs on surfaces (or \"maps\") is an active topic of research in combinatorics, with links to wide-ranging domains such as algebraic geometry, knot theory, and mathematical physics. In the last few years, it has also been found that map enumeration is related to the combinatorics of lambda calculus, with various well-known families of maps in 1-to-1 correspondence with various natural families of linear lambda terms. In the talk I will begin by giving a brief survey of these enumerative connections, then use those to motivate a closer look at the surprisingly rich topological and algebraic properties of linear lambda calculus.",
     location   = "LT1415",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 06 15)
                           (timeOfDayToTime (TimeOfDay 14 00 00))),
     speaker    = "Stuart Gale",
     institute  = "MSP",
     speakerurl = "http://www.bishboria.com/",
     insturl    = "",
     title      = "Informal introduction to knot theory and the unknotting problem",
     abstract   = "This is an informal talk on the interesting properties I've found when playing with the unknotting problem (knot simplification moves that help to establish whether any given knot is a loop in complicated disguise, or something really knotted).\n\nI'll discuss the syntax that I've used for annotating knots that leads to a(n almost) syntax based method for unknotting, but that hints further at unknotting in a more interesting way by using an unintentional property of the syntax.\n\nI'll present some examples of the problems with representing knots and how the syntax and reduction rules help, in my opinion, to make unknotting more tangible.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 06 29)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "Syntax and semantics of Quantitative Type Theory",
     abstract   = "At last year's WadlerFest celebration, Conor presented a dependent type theory where variables are tagged with information about how they are used. Variable usage tagging has been developed in the non dependent setting, starting with Girard's Linear Logic, and culminating with recent work in contextual effects, coeffects, and quantitative type theories. The subtlety with dependent types lies in how to account for the difference between usage in types and terms. Conor's system handles this by treating usage in types as a \"zero\" usage, so that it doesn't affect the usage in terms. This is a departure from previous \"linear\" type theories that maintains a strict separation between usage controlled information, which types cannot depend on, and unrestricted information, which types can depend on.\n\nConor presented a syntax and typing rules for the system, as well as an erasure property that exploits the difference between \"not used\" and \"used\", but doesn't do anything with the finer usage information available. I'll present a collection of models for the system that fully exploit the usage information. This will give interpretations of type theory in resource constrained computational models, Geometry of Interaction models, and imperative models. To maintain order, I will gather all these notions of model under a new concept of \"Quantitative Category with Families\", a generalisation of the standard \"Category with Families\" class of models of dependent types.",
     location   = "LT1310",
     material   = [] }
  ,

    Talk {
     date       = (UTCTime (fromGregorian 2017 06 08)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Fredrik Nordvall Forsberg",
     institute  = "MSP",
     speakerurl = "http://personal.cis.strath.ac.uk/fredrik.nordvall-forsberg",
     insturl    = "",
     title      = "TYPES 2017 Trip report",
     abstract   = "I'll tell you about the most interesting talks, ideas and gossip that came out of the TYPES conference in BudaPest last week.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
      date       = (UTCTime (fromGregorian 2017 07 27)
                            (timeOfDayToTime (TimeOfDay 14 0 0))),
  speaker    = "Matteo Cavaliere",
  institute  = "Edinburgh",
  speakerurl = "https://sites.google.com/site/researchcavaliere/",
  insturl    = "http://www.synthsys.ed.ac.uk/",
  title      = "The Rise and Fall of Cooperative Communities",
  abstract   = "Social, biological and economic networks grow and decline with recurrent fragmentation and re-formation, often explained in terms of external perturbations. I will present a model of dynamical networks and evolutionary game theory that explains these phenomena as consequence of imitation and endogenous conflicts between \"cooperators\" and \"cheaters\". Cooperators promote well-connected prosperous (but fragile)  networks and cheaters cause the network to fragment and lose its prosperity. Once the network is fragmented it can be reconstructed by a new invasion of cooperators, leading to recurrent cycles of formation and fragmentation observed, for instance, in bacterial communities and socio-economic networks. In the last part of the talk, I will briefly introduce my current works on the role of individual decision-making in cooperative communities and the possibility of synthetic biology to address these ideas in microbial communities.\n\nReferences\n\nM. Cavaliere, S. Sedwards, C.E. Tarnita, M.A. Nowak, A. Csikasz-Nagy.\nProsperity is Associated with Instability in Dynamical Networks.\nJournal of Theoretical Biology, 299, 2012.\n\nPlasticity Facilitates Sustainable Growth in the Commons.\nM. Cavaliere, J.F. Poyatos.\nJournal of the Royal Society Interface, 10, 2013.\n\nEco-Evolutionary Feedbacks can Rescue Cooperation in Microbial Populations.\nC. Moreno-Fenoll, M. Cavaliere, E. Martinez-Garcia, J.F. Poyatos.\nScientific Reports, 7, 2017.",
  location   = "LT1415",
  material   = [] }
 ,

  Talk {
      date       = (UTCTime (fromGregorian 2017 06 01)
                            (timeOfDayToTime (TimeOfDay 14 0 0))),
  speaker    = "Rob Myers",
  institute  = "",
  speakerurl = "",
  insturl    = "",
  title      = "Optimal nondeterminism: explaining the Kameda-Weiner algorithm",
  abstract   = "The Kameda-Weiner algorithm takes a machine (nondeterministic finite automaton) as input, and provides an optimal machine (state-minimal nondeterministic finite automaton) as output. In this talk I will discuss work which provides a clear explanation of it, by translating the various syntactic constructs into more meaningful order-theoretic ones, and then composing them together to prove correctness.",
  location   = "LT1310",
  material   = [] }
 ,

  Talk {
      date       = (UTCTime (fromGregorian 2017 05 25)
                            (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Clemens Kupke",
  institute  = "MSP",
  speakerurl = "http://personal.cis.strath.ac.uk/clemens.kupke",
  insturl    = "",
  title      = "Learning via Coalgebraic Logic",
  abstract   = "A key result in computational learning theory is Dana Angluin's L* algorithm that describes how to learn a regular language, or a deterministic finite automaton (DFA), using membership and equivalence queries. In my talk I will present a generalisation of this algorithm using ideas from coalgebra and modal logic &mdash; please note, however, that prior knowledge of these topics will not be required.\n\nIn the first part of my talk I will recall how the L* algorithm works and establish a link to the notion of a filtration from modal logic. Furthermore I will provide a brief introduction to coalgebraic modal logic. In the second part of my talk I will present a generalisation of Angluin's original algorithm from DFAs to coalgebras for an arbitrary finitary set functor T in the following sense: given a (possibly infinite) pointed T-coalgebra that we assume to be regular (i.e. having an equivalent finite representation) we can learn its finite representation by (i) asking \"logical queries\" (corresponding to membership queries) and (ii) making conjectures to which a teacher has to reply with a counterexample (equivalence queries). This covers (known variants of) the original L* algorithm and  algorithms for learning Mealy and Moore machines. Other examples are infinite streams, trees and bisimulation quotients of various types of transition systems.\n\nJoint work with Simone Barlocco.",
  location   = "LT1310",
  material   = [] }
 ,

  Talk {
      date       = (UTCTime (fromGregorian 2017 05 18)
                            (timeOfDayToTime (TimeOfDay 15 0 0))),
  speaker    = "Thorsten Altenkirch",
  institute  = "Nottingham",
  speakerurl = "http://www.cs.nott.ac.uk/~txa/",
  insturl    = "http://www.cs.nott.ac.uk/",
  title      = "The joy of QIITs",
  abstract   = "Quotient inductive inductive types (QIITS) are set-truncated mutually defined higher inductive types. I am going to discuss two applications of QIITs:\n\n1. define an internal syntax of Type Theory without reference to untyped preterms;\n2. define a version of the partiality monad that doesn't require countable choice.\n\nOn the one hand I think that these applications are interesting because they represent applications of HoTT which have nothing to do with homotopy theory; on the other hand they are clearly not very higher order (in the sense of truncation levels) but can be defined in the set-truncated fragment of HoTT. Hence my question: what are interesting applications of higher types which are not directly related to synthetic homotopy theory?\n\nThis talk is based on joint work with Paolo Capriotti, Nils Anders Danielsoon, Gabe Dijkstra, Ambrus Kaposi and Nicolai Kraus.",
  location   = "LT1310",
  material   = [] }
 ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 04 20)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "Modular Datalog",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 05 04)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Conor McBride",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/conor.mcbride/",
     insturl    = "",
     title      = "Differential Operators",
     abstract   = "A traditional source of complaint from CS undergraduates (especially in the USA, but in other places, too) is that they are made to learn too much standard issue mathematics with little apparent relevance to computation. Differential calculus (with its usual presentational focus on physical systems) is often picked upon as the archetype. What we see in action is the fragile male ego: they are not so quick to complain about the unimportance of things they do not find difficult. All of which makes more delicious the irony that differential operators have a key role to play in understanding discrete structures, such as automata, datatypes, execution stacks, and plenty more.\n\nThe basic idea is as follows: to put your finger over any single K in the pair of words <div class='centered'>BREKEKEKEX KOAXKOAX</div> you must choose either to put your finger over a single K in BREKEKEKEX and pair with KOAXKOAX intact, or to leave BREKEKEKEX intact and cover a K in KOAXKOAX. You have just followed Leibniz's rule for differentiating a product (with respect to K), and computed a one-hole context for a K in a data structure.\n\nNewton, of course, would point out that such derivatives arise as the limit of a divided difference, a concept worthy of study in more generality. I would point out that divided differences are often definable, even in situtations when neither division nor difference makes much apparent sense. Notably, Brzozowski's derivative for regular languages is a divided difference (even though it is not Leibniz's derivative).\n\nI'll work mainly with containers (which look a lot like power series) but make sure there are plenty of concrete examples. In practice, it becomes rather useful to compute derivatives by pattern matching on types, which is especially funny as symbolic differentiation is the first example in the literature of computing anything by pattern matching at all.",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
      date  = (UTCTime (fromGregorian 2017 04 05)
                      (timeOfDayToTime (TimeOfDay 10 00 0))),
     title = "CLAP",
     url = "http://homepages.inf.ed.ac.uk/cheunen/clapscotland/",
     location = "Strathclyde, room LT1415",
     locationurl= "",
     description = ""
    }
  ,

  SpecialEvent {
      date  = (UTCTime (fromGregorian 2017 04 10)
                      (timeOfDayToTime (TimeOfDay 09 00 0))),
     title = "ALCOP2017",
     url = "https://personal.cis.strath.ac.uk/clemens.kupke/ALCOP2017/",
     location = "Strathclyde, Room MC301 (McCance Building)",
     locationurl= "http://www.strath.ac.uk/maps/mccancebuilding/",
     description = ""
    }
  ,

  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2017 02 22)
                           (timeOfDayToTime (TimeOfDay 15 00 0))),
     speaker    = "Andrea Bracciali",
     institute  = "Stirling",
     speakerurl = "http://www.cs.stir.ac.uk/~abb/",
     insturl    = "http://www.cs.stir.ac.uk/",
     title      = "An introduction to Blockchains",
     abstract   = "Blockchains, i.e. decentralised, distributed data structures which can also carry executable code for a non-standard execution environment, introduce new models of computation. Decentralised, here, means, informally speaking, \"without central control\", e.g. a currency without a (central) bank, but much more. Blockchains support the recently introduced virtual currencies, a la Bitcoin, and a new class of decentralised applications, including smart contracts. In this talk we will introduce the main aspects of a blockchain, with particular reference to the Bitcoin blockchain as a paradigmatic case of such a new model of computation, and also touching on smart contracts. No previous knowledge of bitcoin/blockchain required for this introductory talk.",
     location   = "LT1415" }
  ,

  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2017 02 15)
                           (timeOfDayToTime (TimeOfDay 13 00 0))),
     speaker    = "Chris Heunen",
     institute  = "Edinburgh",
     speakerurl = "http://homepages.inf.ed.ac.uk/cheunen/",
     insturl    = "http://www.ed.ac.uk/informatics/",
     title      = "Semantics for probabilistic programming",
     abstract   = "Statistical models in e.g. machine learning are traditionally expressed in some sort of flow charts. Writing sophisticated models succinctly is much easier in a fully fledged programming language. The programmer can then rely on generic inference algorithms instead of having to craft one for each model. Several such higher-order functional probabilistic programming languages exist, but their semantics, and hence correctness, are not clear. The problem is that the standard semantics of probability theory, given by measurable spaces, does not support function types. I will describe how to get around this.",
     location   = "LT1415" }
  ,

 Talk {
  date       = (UTCTime (fromGregorian 2017 2 06)
                        (timeOfDayToTime (TimeOfDay 14 0 0))),
  speaker    = "Ohad Kammar",
  institute  = "Oxford",
  speakerurl = "http://www.cs.ox.ac.uk/people/ohad.kammar/main.html",
  insturl    = "http://www.cs.ox.ac.uk/",
  title      = "On the expressive power of user-defined effects: effect handlers, monadic reflection, delimited control without answer-type-modification",
  abstract   = "We compare the expressive power of three programming abstractions for user-defined computational effects: Bauer and Pretnar's effect handlers, Filinski's monadic reflection, and delimited control. This comparison allows a precise discussion about the relative merits of each programming abstraction.\n\nWe present three calculi, one per abstraction, extending Levy's call-by-push-value. These comprise syntax, operational semantics, a natural type-and-effect system, and, for handlers and reflection, a set-theoretic denotational semantics. We establish their basic meta-theoretic properties: adequacy, soundness, and strong normalisation. Using Felleisen's notion of a macro translation, we show that these abstractions can macro-express each other, and show which translations preserve typeability.  We use the adequate finitary set-theoretic denotational semantics for the monadic calculus to show that effect handlers cannot be macro-expressed while preserving typeability either by monadic reflection or by delimited control. We supplement our development with a mechanised Abella formalisation.\n\nJoint work with Yannick Forster, Sam Lindley, and Matija Pretnar.",
  location   = "LT1415",
  material   = [] }
 ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 04 27)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "What I, Dunne, done in my PhD",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 03 30)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Fredrik Nordvall Forsberg",
     institute  = "MSP",
     speakerurl = "http://personal.cis.strath.ac.uk/fredrik.nordvall-forsberg",
     insturl    = "",
     title      = "Cubical adventures in Connecticut",
     abstract   = "I'll report on my attempts to design a cubical type theory together with Dan Licata and Ed Morehouse during my visit to Wesleyan University, Middletown, Connecticut. We had something which seemed quite promising, but that falls apart just short of the finish line; I'll tell you about it in the hope of miraculous rescue from the audience. However, I'll start from basics so that everyone has a chance to join in in the fun. Mentions of Donald Trump will be kept to a minimum.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 03 23)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "Blockchain discussion",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

    BasicTalk {
     date       = (UTCTime (fromGregorian 2017 03 16)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "Operational and Denotational Semantics for PCF",
     abstract   = "PCF is the prototypical functional programming language, with two data types (naturals and booleans), lambda-abstraction and recursion. PCF was introduced by Gordon Plotkin in his seminal \"LCF Considered as a Programming Language\" paper from 1977. Despite PCF's simplicity, its semantics is theoretically interesting. I will introduce PCF, its operational semantics, the \"standard\" domain-theoretic denotational semantics and show that the two agree on closed programs. Finally, I will discuss observational equivalence for PCF and show that the denotational semantics fails to be \"fully abstract\".",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 03 09)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Conor McBride",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/conor.mcbride/",
     insturl    = "",
     title      = "Indexed Containers/Interaction Structures",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 03 02)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "Separation Logic and Hoare Logic",
     abstract   = "Hoare Logic is a logic for proving properties of programs of the \
\form: if the initial state satisfies a precondition, then the final \
\state satisfies a postcondition. Hoare logic proofs are structured \
\around the structure of the program itself, making the system a \
\compositional one for reasoning about pieces of programs. I'll \
\introduce Hoare Logic for a little imperative language with WHILE \
\loops. I'll then motivate Separation Logic, which enriches Hoare \
\Logic with a Frame Rule for local reasoning. ",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 02 23)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "James Chapman",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/james.chapman",
     insturl    = "",
     title      = "Blockchain",
     abstract   = "I will try to follow on from yesterday's introduction by getting to nitty gritty of bitcoin/blockchain. I won't assume attendance of the seminar but will try not to repeat it!",
     location   = "LT1415",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 02 16)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Clemens Kupke",
     institute  = "MSP",
     speakerurl = "http://personal.cis.strath.ac.uk/clemens.kupke",
     insturl    = "",
     title      = "Automata on infinite words",
     abstract   = "In this 101 I plan to discuss omega-automata, i.e., finite automata that operate on infinite words/streams. These automata form an important tool for the specification and verification of the ongoing, possibly infinite behaviour of a system. In my talk I will provide the standard definition(s) of omega-automata and highlight what makes omega-automata difficult from a coalgebraic perspective. Finally, I am going to discuss the work by Ciancia & Venema that provides a first coalgebraic representation of a particular type of omega-automata, so-called Muller automata.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 02 09)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Simone Barlocco",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Automata learning",
     abstract   = "Automata learning is a well known technique to infer a finite state \
\machine from a set of observations. One important algorithm for automata \
\learning is the L* algorithm by Dana Angluin. \
\In this 101, I will explain how the L* algorithm works via an example. \
\Afterwards, I will discuss the ingredients of the algorithm both in the \
\standard framework by Angluin and in a recently developed \
\categorical/coalgebraic framework by Jacobs & Silva. Lastly, I plan to \
\outline the proof of the minimality of the automaton that is built by \
\the learning algorithm.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 02 02)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Johannes Marti",
     institute  = "MSP",
     speakerurl = "http://johannesmarti.com/",
     insturl    = "",
     title      = "First-order logic",
     abstract   = "In this 101 I outline the syntax and semantics of classical first order predicate logic. I try to also mention some of the characteristic properties of first order logic such as compactness, the L&ouml;wenheim-Skolem theorem or locality properties in finite model theory.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2017 01 26)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Conor McBride, James Chapman, and Bob Atkey",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "La Vie Parisienne: POPL trip report",
     abstract   = "  Our POPL attendees will tell us about their favourite talks, the latest research gossip and show us their most scenic photos from POPL in Paris.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2017 01 19)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Johannes Marti",
     institute  = "MSP",
     speakerurl = "http://johannesmarti.com/",
     insturl    = "",
     title      = "Automata and games for fixpoint logics",
     abstract   = "I explain how we can use automata and games to understand the behaviour of modal fixpoint logics.",
     location   = "LT1310",
     material   = [] }
  ,



  SpecialEvent {
     date  = (UTCTime (fromGregorian 2017 01 12)
                      (timeOfDayToTime (TimeOfDay 11 40 0))),
     title = "MSP101 Planning session",
     url = "",
     location = "LT1310",
     locationurl= "",
     description = ""
    }
  ,

  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2016 12 14)
                           (timeOfDayToTime (TimeOfDay 16 00 0))),
     speaker    = "Sam Lindley",
     institute  = "Edinburgh",
     speakerurl = "http://homepages.inf.ed.ac.uk/slindley/",
     insturl    = "http://www.ed.ac.uk/informatics/",
     title      = "Do be do be do",
     abstract   = "We explore the design and implementation of Frank, a strict functional programming language with a bidirectional effect type system designed from the ground up around a novel variant of Plotkin and Pretnar's effect handler abstraction.\n\nEffect handlers provide an abstraction for modular effectful programming: a handler acts as an interpreter for a collection of commands whose interfaces are statically tracked by the type system. However, Frank eliminates the need for an additional effect handling construct by generalising the basic mechanism of functional abstraction itself. A function is simply the special case of a Frank <i>operator</i> that interprets no commands.\n\nMoreover, Frank's operators can be <i>multihandlers</i> which simultaneously interpret commands from several sources at once, without disturbing the direct style of functional programming with values.\n\nEffect typing in Frank employs a novel form of effect polymorphism which avoid mentioning effect variables in source code. This is achieved by propagating an <i>ambient ability</i> inwards, rather than accumulating unions of potential effects outwards.\n\nI'll give a tour of Frank through a selection of concrete examples.\n\n(Joint work with Conor McBride and Craig McLaughlin) ",
     location   = "LT1415" }
  ,

  SpecialEvent {
      date  = (UTCTime (fromGregorian 2016 11 30)
                      (timeOfDayToTime (TimeOfDay 12 00 0))),
     title = "CLAP",
     url = "http://homepages.inf.ed.ac.uk/cheunen/clapscotland/",
     location = "Strathclyde",
     locationurl= "",
     description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 11 02)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Phil Scott",
     institute  = "University of Ottawa",
     speakerurl = "http://www.site.uottawa.ca/~phil/",
     insturl    = "http://engineering.uottawa.ca/eecs/",
     title      = "An introduction to many-valued logics and effect algebras",
     abstract   = "The algebras of many-valued Lukasiewicz logics (MV algebras) as well as the theory of quantum measurement (Effect algebras) have undergone considerable development in the 1980s and 1990s; they now constitute important research fields, with connections to several contemporary areas of mathematics, logic, and theoretical computer science.\n\nBoth subjects have recently attracted considerable interest among groups of researchers in categorical logic and foundations of quantum computing. I will give a leisurely introduction to MV algebras (and their associated logics), as well as the more general world of effect algebras. If time permits, we will also illustrate some new results (with Mark Lawson, Heriot-Watt) on coordinatization of some concrete MV-algebras using inverse semigroup theory.",
     location   = "LT1415",
     material   = [] }
  ,

  SpecialEvent {
      date  = (UTCTime (fromGregorian 2016 11 09)
                      (timeOfDayToTime (TimeOfDay 12 00 0))),
     title = "SPLS",
     url = "https://msp-strath.github.io/spls-16/",
     location = "Room 301, McCance building, Strathclyde",
     locationurl= "http://www.strath.ac.uk/maps/mccancebuilding/",
     description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 09 28)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Guillaume Allais",
     institute  = "Radboud University Nijmegen",
     speakerurl = "http://gallais.org",
     insturl    = "",
     title      = "Towards a Generic Treatment of Syntaxes with Binding",
     abstract   = "The techniques used by the generic programming community have taught us that we can greatly benefit from exposing the common internal structure of a family of objects. One can for instance derive once and for all a wealth of iterators from an abstract characterisation of recursive datatypes as fixpoints of functors.\n\nOur previous work on type and scope preserving semantics and their properties has made us realise that numerous semantics of the lambda calculus can be presented as instances of the fundamental lemma associated to an abstract notion of 'Model'. This made it possible to avoid code duplication as well as prove these semantics' properties generically.\n\nPutting these two ideas together, we give an abstract description of syntaxes with binding making both their recursive and scoping structure explicit. The fundamental lemma associated to these syntaxes can be instantiated to provide the user with proofs that its language is stable under renaming and substitution as well as provide a way to easily define various evaluators.",
     location   = "LT1310",
     material   = [] }
  ,


  Talk {
     date       = (UTCTime (fromGregorian 2016 09 15)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Jules Hedges",
     institute  = "Oxford",
     speakerurl = "http://www.cs.ox.ac.uk/people/julian.hedges/home.html",
     insturl    = "http://www.cs.ox.ac.uk/",
     title      = "Morphisms of open games",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,


  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 12 14)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Alasdair Lambert",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Compositional Game Theory",
     abstract   = "I will be discussing composition in a model of economic game theory and methods for representing the impact of choice on subsequent games. Time permitting I will also work through some games using this model.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 12 7)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Jamie Gabbay",
     institute  = "Heriot-Watt",
     speakerurl = "http://www.gabbay.org.uk",
     insturl    = "http://www.macs.hw.ac.uk/departments/computer-science.htm",
     title      = "Nominal filters and semantics of predicate logic",
     abstract   = "A <dfn>filter</dfn> P is a consistent deductively closed set of predicates. A filter is <dfn>prime</dfn> when\n<div class='centered'>(&phi; &or; &psi;) &isin; P &rArr; (&phi; &isin; P &or; &psi; &isin; P)</div>In words: if phi-or-psi is in P then phi is in P or psi is in P. Primeness gives soundness for disjunction.\n\nUsing this it is not hard to construct a semantics to propositional logic in which a predicate &phi; \"means\" the set of prime filters containing it.  This is a standard \"trick\" for building semantics and is an extremely useful proof-method.\n\nI have developed a semantics for predicate logic and also for the lambda-calculus based on similar notions of filter, but in a <i>nominal</i> context --- meaning that filters are developed using Fraenkel-Mostowski (FM) set theory instead of Zermelo-Fraenkel (ZF) set theory.  What matters here is that FM sets have additional name structure over ZF sets, and this additional structure can be exploited to give semantics to the extra structure that predicates have over propositions, and in particular the additional name structure lets us write down primeness conditions for soundness for universal quantification.\n\nThe resulting semantics is rich and interesting.  In a sentence: nominal techniques help us to extend the notion of Stone representation and duality from propositional logic to full first-order logic (also with equality, if we wish, and also to other logics and calculi with variables and quantifiers).\n\nI will give a detailed description of the filter-style conditions involved, and discuss some of what I think they tell us about predicates and quantification in logic and computation.  More information can also be found in two papers here:\n<a href='http://www.gabbay.org.uk/papers.html#semooc'>http://www.gabbay.org.uk/papers.html#semooc</a>\n<a href='http://www.gabbay.org.uk/papers.html#repdul'>http://www.gabbay.org.uk/papers.html#repdul</a>",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 11 23)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Yde Venema",
     institute  = "ILLC, Amsterdam",
     speakerurl = "https://staff.science.uva.nl/y.venema/",
     insturl    = "http://www.illc.uva.nl/",
     title      = "Some model theory for the modal mu-calculus",
     abstract   = "We discuss a number of semantic properties pertaining to formulas of the modal mu-calculus. For each of these properties we provide a corresponding syntactic fragment, in the sense that a mu-calculus formula \\phi has the given property iff it is equivalent to a formula \\phi' in the corresponding fragment. Since this formula \\phi' will always be effectively obtainable from \\phi, as a corollary, for each of the properties under discussion, we prove that it is decidable in elementary time whether a given mu-calculus formula has the property or not.\n\nThe properties that we study have in common that they all concern the dependency of the truth of the formula at stake, on a single proposition letter p. In each case the semantic condition on \\phi will be that \\phi, if true at a certain state in a certain model, will remain true if we restrict the set of states where p holds, to a special subset of the state space. Important examples include the properties of complete additivity and (Scott) continuity, where the special subsets are the singletons and the finite sets, respectively.\n\nOur proofs for these characterisation results will be automata-theoretic in nature; we will see that the effectively defined maps on formulas are in fact induced by rather simple transformations on modal automata.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 11 16)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Johannes Marti",
     institute  = "MSP",
     speakerurl = "http://johannesmarti.com/",
     insturl    = "",
     title      = "Modal logic",
     abstract   = "Modal logic provides a simple, yet surprisingly powerful, language for specifying properties of coalgebras. In this talk I introduce the basic modal logic that is interpreted on relational structures. My aim is to provide an idea how modal logic relates to other logics, such as first-order and intuitionistic logic, and to the duality between algebraic and coalgebraic structures.\n\nIf time permits, I might also give a very informal warm-up for the modal mu-calculus which is the topic of next week's talk.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 11 9)
                           (timeOfDayToTime (TimeOfDay 10 30 0))),
     speaker    = "Stuart Gale",
     institute  = "MSP",
     speakerurl = "http://www.bishboria.com/",
     insturl    = "",
     title      = "Meta-theory of lambda-calculi",
     abstract   = "I'll give a standard overview of Simply Typed Lambda Calculus (STLC) (syntax, typing and computation rules) in a well-typed setting, and then modify it to show STLC in a bidirectional setting.\n\nAfterwards I'll show Strong Confluence (Church-Rosser theorem) in the bidirectional setting.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 11 2)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Ben Price",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/benjamin.price",
     insturl    = "",
     title      = "System F and proof-relevant parametricity",
     abstract   = "I shall give a brief introduction to System F.\nI will then explain how to capture our intuition about polymorphic functions behaving uniformly by relational parametricity, and talk about ongoing work to find a notion of proof-relevant parametricity.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 10 26)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Fredrik Nordvall Forsberg",
     institute  = "MSP",
     speakerurl = "http://personal.cis.strath.ac.uk/fredrik.nordvall-forsberg",
     insturl    = "",
     title      = "Data types and initial-algebra semantics",
     abstract   = "I will give a basic introduction to data types and initial-algebra semantics. The meaning of a data type is given as the initial object in a category of types with the corresponding constructors. Initiality immediately allows the modelling of a non-dependent recursion principle. I'll show how this can be upgraded to full dependent elimination, also known as induction, by using the uniqueness of the mediating arrow; in fact, induction is equivalent to recursion plus uniqueness. All possibly unfamiliar terms in this abstract will also be explained.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 10 19)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Clemens Kupke",
     institute  = "MSP",
     speakerurl = "http://personal.cis.strath.ac.uk/clemens.kupke",
     insturl    = "",
     title      = "A first introduction to coalgebra",
     abstract   = "The core subject of Computer Science is \"generated behaviour\" (quiz: who said this?). Coalgebra provides the categorical formalisation of generated behaviour. I am planning to provide a first, very basic introduction to coalgebra. This will consist of two parts: i) coinduction & corecursion as means to define & reason about the (possibly) infinite behaviour of things; ii)modal logics for coalgebras.",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 10 12)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Neil Ghani",
     institute  = "MSP",
     speakerurl = "http://personal.cis.strath.ac.uk/neil.ghani",
     insturl    = "",
     title      = "Category Theory",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  BasicTalk {
     date       = (UTCTime (fromGregorian 2016 10 5)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan",
     insturl    = "",
     title      = "Rewriting, and operads",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 09 28)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "James Chapman",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/james.chapman",
     insturl    = "",
     title      = "ICFP trip report",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 09 21)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Eventual image functors",
     abstract   = "For a category C we consider the endomorphism category End(C) and the subcategory of automorphisms Aut(C) -> End(C). It has been observed that for C the category of finite sets, finite dimensional vector spaces, or compact metric spaces this inclusion functor admits a simultaneous left and right adjoint.\n\nWe give general criteria for the existence of such adjunctions for a broad class of categories which includes FinSet, FinVect and CompMet as special cases. This is done using the language of factorisation systems and by introducing a notion of eventual image functors which provide a general method for constructing adjunctions of this kind.",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
     date  = (UTCTime (fromGregorian 2016 09 14)
                      (timeOfDayToTime (TimeOfDay 11 40 0))),
     title = "MSP101 Planning session",
     url = "",
     location = "LT1310",
     locationurl= "",
     description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 08 24)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Philippa Cowderoy",
     institute  = "",
     speakerurl = "http://flippac.org",
     insturl    = "",
     title      = "Information Effects for Understanding Type Systems",
     abstract   = "Or: how someone else found the maths to justify my dogma",
     location   = "LT1415",
     material   = [PDF "2016-08-24_cowderoy.pdf"
                       $ Just "Philippa says: beware, slightly wordy slides!",
                   File "2016-08-24_cowderoy/STLC.hs" "Haskell implementation for simply-typed lambda calculus"] }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2016 07 01)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "A New Perspective On Observables in the Category of Relations",
     abstract   = "Practice talk for Quantum Interactions.",
     location   = "LT1415",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 07 01)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan/",
     insturl    = "",
     title      = "Interacting Frobenius Algebras are Hopf",
     abstract   = "Practice talk for LICS.\n\nTheories featuring the interaction between a Frobenius algebra and a Hopf algebra have recently appeared in several areas in computer science: concurrent programming, control theory, and quantum computing, among others. Bonchi, Sobocinski, and Zanasi have shown that, given a suitable distribution law, a pair of Hopf algebras forms two Frobenius algebras. Coming from the perspective of quantum theory, we take the opposite approach, and show that interacting Frobenius algebras form Hopf algebras. We generalise \\cite{Bonchi2014a} by including non-trivial dynamics of the underlying object -- the so-called phase group -- and investigate the effects of finite dimensionality of the underlying model, and recover the system of Bonchi et al as a subtheory in the prime power dimensional case. We show that the presence of a non-trivial phase group means that the theory cannot be formalised as a distributive law.",
     location   = "LT1415",
     material   = [] }
  ,
  
  SpecialEvent {
      date  = (UTCTime (fromGregorian 2016 06 06)
                      (timeOfDayToTime (TimeOfDay 09 00 0))),
     title = "Quantum Physics and Logic 2016",
     url = "http://qpl2016.cis.strath.ac.uk/",
     location = "McCance building, Strathclyde",
     locationurl= "http://www.strath.ac.uk/maps/mccancebuilding/",
     description = ""
    }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2016 06 01)
                           (timeOfDayToTime (TimeOfDay 12 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Interacting Frobenius algebras",
     abstract   = "Practice talk for QPL.\n\nTheories featuring the interaction between a Frobenius algebra and a Hopf algebra have recently appeared in several areas in computer science: concurrent programming, control theory, and quantum computing, among others. Bonchi, Sobocinski, and Zanasi (2014) have shown that, given a suitable distributive law, a pair of Hopf algebras forms two Frobenius algebras. Here we take the opposite approach, and show that interacting Frobenius algebras form Hopf algebras. We generalise (BSZ 2014) by including non-trivial dynamics of the underlying object---the so-called phase group---and investigate the effects of finite dimensionality of the underlying model. We recover the system of Bonchi et al as a subtheory in the prime power dimensional case, but the more general theory does not arise from a distributive law.",
     location   = "LT1310",
     material   = [] }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2016 05 04)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Factorisation Systems and Algebra",
     abstract   = "I'll show how to generalise some results from algebra (think groups, rings, R-modules etc.) to a categorical setting using factorisation systems and an appropriate notion of finiteness on the objects of a category.",
     location   = "LT1310",
     material   = [] }
  ,


  Talk {
     date       = (UTCTime (fromGregorian 2016 04 27)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Guillaume Allais",
     institute  = "Radboud University Nijmegen",
     speakerurl = "http://gallais.org",
     insturl    = "",
     title      = "Typing with Leftovers",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2016 04 19)
                           (timeOfDayToTime (TimeOfDay 16 00 0))),
     speaker    = "Andreas Abel",
     institute  = "Chalmers and Gothenburg University",
     speakerurl = "http://www.cse.chalmers.se/~abela/",
     insturl    = "http://www.chalmers.se/en/departments/cse/Pages/default.aspx",
     title      = "Formal languages, coinductively formalized",
     abstract   = "Formal languages and automata are taught to every computer science student. However, the student will most likely not see the beautiful coalgebraic foundations.\n\nIn this talk, I recapitulate how infinite trees can represent formal languages (sets of strings). I explain Agda's coinduction mechanism based on copatterns and demonstrate that it allows an elegant representation of the usual language constructions like union, concatenation, and Kleene star, with the help of Brzozowski derivatives. We will also investigate how to reason about equality of languages using bisimulation and coinductive proofs.",
     location   = "LT1415" }
  ,
  
  SpecialEvent {
     date  = (UTCTime (fromGregorian 2016 04 14)
                      (timeOfDayToTime (TimeOfDay 10 30 0))),
     title = "Categories, Logic, and Physics, Scotland",
     url = "http://homepages.inf.ed.ac.uk/cheunen/clapscotland/",
     location = " School of Informatics, Edinburgh",
     locationurl= "",
     description = ""
    }
  ,

  Talk {
     date  = (UTCTime (fromGregorian 2016 03 31)
                      (timeOfDayToTime (TimeOfDay 10 30 0))),
     speaker    = "",
     institute  = "",
     speakerurl = "",
     insturl    = "",
     title = "Presentations by candidates for the 'Coalgebraic Foundations of Semi-Structured Data' RA position",
     abstract   = "",
     location   = "LT1415",
     material   = [] }
  ,

  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2016 03 23)
                           (timeOfDayToTime (TimeOfDay 16 00 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "A static analyser for concurrent Java",
     abstract   = "ThreadSafe is a static analysis tool for finding bugs in concurrent Java code that has been used by companies across the world to analyse and find bugs in large mission industrial applications. I will talk about how ThreadSafe works, and our experiences in applying static analysis technology to the \"real world\".\n\nThreadSafe is available from <a href='http://www.contemplateltd.com/'>http://www.contemplateltd.com/</a>",
     location   = "LT1415" }
  ,
  
  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2016 05 25)
                           (timeOfDayToTime (TimeOfDay 15 30 0))),
     speaker    = "Neil Ghani",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/neil.ghani/",
     insturl    = "",
     title      = "A Compositional Approach to Game Theory",
     abstract   = "I will sketch an alternative approach to economic game theory based upon the computer science idea of compositionality: concretely we i) give a number of operators for building up complex and irregular games from smaller and simpler games; and ii) show how the Nash equilibrium of these complex games can be defined recursively from their simpler components. We apply compositional reasoning to sophisticated games where agents must reason about how their actions affect future games and how those future games effect the utility they receive. This forces us into a second innovation &mdash; we augment the usual lexicon of games with a dual notion to utility because, in order for games to accept utility, this utility must be generated by other games. Our third innovation is to represent our games as string diagrams so as to give a clear visual interface to manipulate them. Our fourth, and final, innovation is a categorical formalisation of these intuitive diagrams which ensures our reasoning about them is fully rigorous.\n\nThe talk will be general so as appeal to as wide an audience as possible. In particular, no knowledge of category theory will be assumed!",
     location   = "LT908" }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 03 17)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Nicolas Behr",
     institute  = "Edinburgh",
     speakerurl = "http://www.inf.ed.ac.uk/people/staff/Nicolas_Behr.html",
     insturl    = "http://wcms.inf.ed.ac.uk/lfcs/",
     title      = "On the rule algebraic reformulation of graph rewriting",
     abstract   = "Motivated by the desire to understand the combinatorics of graph rewriting systems, it proved necessary to invent a formulation of graph rewriting itself that is not based on category theoretic structures as in the traditional framework, but on the concept of diagrammatic combinatorial Hopf algebras and reductions thereof. In this talk, I will present how the classical example of the Heisenberg-Weyl algebra of creation and annihilation of indistinguishable particles, which can alternatively be interpreted as the algebra of discrete graph rewriting, gave the initial clues for this novel framework. In hindsight, to pass from the special case of discrete graph rewriting to the case of general graph rewriting required every aspect of the framework of diagrammatic combinatorial Hopf algebras as a guideline for the construction, yet none of the traditional category theoretic ideas, whence one might indeed consider this reformulation as an independent formulation of graph rewriting.\n\nThe new framework results in a number of surprising results even directly from the formulation itself: besides the two main variants of graph rewriting known in the literature (DPO and SPO rewriting), there exist two more natural variants in the new framework. For all four variants, graph rewriting rules are encoded in so-called rule diagrams, with their composition captured in the form of diagrammatic compositions followed by one of four variants of reduction operations. Besides the general structure theory of the resulting algebras aka the rule algebras, one of the most important results to date of this framework in view of applications is the possibility to formulate stochastic graph rewriting systems in terms of the canonical representations of the rule algebras. Notably, this is closely analogous to the formulation of chemical reaction systems in terms of the canonical representation of the Heisenberg-Weyl algebra aka the bosonic Fock space. The presentation will not assume any prior knowledge of the audience on the particular mathematics required for this construction, and will be given on the whiteboard. The work presented is the result of a collaboration with Vincent Danos and Ilias Garnier (ENS Paris/LFCS University of Edinburgh), and (in an earlier phase) with Tobias Heindel (University of Copenhagen).",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 03 03)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Fredrik Nordvall Forsberg",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/fredrik.nordvall-forsberg/",
     insturl    = "",
     title      = "Comprehensive Parametric Polymorphism",
     abstract   = "In this talk, we explore the fundamental category-theoretic structure needed to model relational parametricity (i.e., the fact that polymorphic programs preserve all relations) for the polymorphic lambda calculus (a.k.a. System F). Taken separately, the notions of categorical model of impredicative polymorphism and relational parametricity are well-known (lambda2-fibrations and reflexive graph categories, respectively). Perhaps surprisingly, simply combining these two structures results in a notion that only enjoys the expected properties in case the underlying category is well-pointed. This rules out many categories of interest (e.g. functor categories) in the semantics of programming languages.\n\nTo circumvent this restriction, we modify the definition of fibrational model of impredicative polymorphism by adding one further ingredient to the structure: comprehension in the sense of Lawvere. Our main result is that such comprehensive models, once further endowed with reflexive-graph-category structure, enjoy the expected consequences of parametricity. This is proved using a type-theoretic presentation of the category-theoretic structure, within which the desired consequences of parametricity are derived. Working in this type theory requires new techniques, since equality relations are not available, so that standard arguments that exploit equality need to be reworked.\n\nThis is joint work with Neil Ghani and Alex Simpson, and a dry run for a talk in Cambridge the week after.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 01 26)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Aleks Kissinger",
     institute  = "Nijmegen",
     speakerurl = "http://www.cs.ru.nl/A.Kissinger/",
     insturl    = "http://www.ru.nl/ds/",
     title      = "Rewriting modulo symmetric monoidal structure",
     abstract   = "String diagrams give a powerful graphical syntax for morphisms in symmetric monoidal categories (SMCs). They find many applications in computer science and are becoming increasingly relevant in other fields such as physics and control theory.\n\nAn important role in many such approaches is played by equational theories of diagrams, which can be oriented and used as rewrite systems. In this talk, I'll lay the foundations for this form of rewriting by interpreting diagrams combinatorially as typed hypergraphs and establish the precise correspondence between diagram rewriting modulo the laws of SMCs on the one hand and double pushout (DPO) rewriting of hypergraphs, subject to a soundness condition called convexity, on the other. This result rests on a more general characterisation theorem in which we show that typed hypergraph DPO rewriting amounts to diagram rewriting modulo the laws of SMCs with a chosen special Frobenius structure.\n\nIf there's time, I'll also discuss some of the results we have in developing the rewrite theory of hypergraphs for SMCs, namely termination proofs via graph metrics and strongly convex critical pair analysis.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 01 26)
                           (timeOfDayToTime (TimeOfDay 10 30 0))),
     speaker    = "John Power",
     institute  = "Bath",
     speakerurl = "http://www.bath.ac.uk/comp-sci/contacts/academics/john_power/",
     insturl    = "http://www.bath.ac.uk/comp-sci/",
     title      = "Enriched Lawvere Theories",
     abstract   = "In this talk, we consider extending Lawvere theories to allow enrichment in a base category such as CMonoid, Poset or Cat. In doing so, we see that we need to alter the formulation in a fundamental way, using the notion of cotensor, a kind of limit that is hidden in the usual accounts of ordinary category theory but is fundamental to enriched category theory. If time permits, we will briefly consider the specific issues that arise when one has two-dimensional structure in the enriching category, as exemplified by Poset and Cat.",
     location   = "LT1310",
     material   = [] }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2016 01 25)
                           (timeOfDayToTime (TimeOfDay 10 30 0))),
     speaker    = "John Power",
     institute  = "Bath",
     speakerurl = "http://www.bath.ac.uk/comp-sci/contacts/academics/john_power/",
     insturl    = "http://www.bath.ac.uk/comp-sci/",
     title      = "Lawvere Theories",
     abstract   = "In 1963, Bill Lawvere characterised universal algebra in category theoretic terms. His formulation being category theoretic was not its central contribution: more fundamental was its presentation independence. Three years later, monads were proposed as another category theoretic formulation of universal algebra. Overall, the former are technically better but the relationship is particularly fruitful and the latter are more prominent, cf Betamax vs VHS. So we study Lawvere theories carefully in the setting of universal algebra and in relation to monads.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 02 25)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Conor McBride",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/conor.mcbride/",
     insturl    = "",
     title      = "Excuse My Extrusion",
     abstract   = "I have recently begun to learn about the Cubical Type Theory of Coquand et al., as an effective computational basis for Voevodsky's Univalent Foundations, inspired by a model of type theory in cubical sets. It is in some ways compelling in its simplicity, but in other ways intimidating in its complexity. In order to get to grips with it, I have begun to develop my own much less subtle variation on the theme. If I am lucky, I shall get away with it. If I am unlucky, I shall have learned more about why Cubical Type Theory has to be as subtle as it is.\n\nMy design separates Coquand's all-powerful \"compose\" operator into smaller pieces, dedicated to more specific tasks, such as transitivity of paths. Each type path Q : S = T, induces a notion of value path s {Q} t, where either s : S, or s is •, \"blob\", and similarly, t : T or t = •. A \"blob\" at one end indicates that the value at that end of the path is not mandated by the type. This liberalisation in the formation of \"equality\" types allows us to specify the key computational use of paths between types, extrusion:\n\nif Q : S = T and s : S, then s ⌢• Q : s {Q} •\n\nThat is, whenever we have a value s at one end of a type path Q : S = T, we can extrude that value across the type path, getting a value path which is s at the S end, but whose value at the T end is not specified in advance of explaining how to compute it. Extrusion gives us a notion of coercion-by-equality which is coherent by construction. It is defined by recursion on the structure of type paths. Univalence can be added to the system by allowing the formation of types interpolating two equivalent types, with extrusion demanding the existence of the corresponding interpolant values, computed on demand by means of the equivalence.\n\nSo far, there are disconcerting grounds for optimism, but the whole of the picture has not yet emerged: I may just have pushed the essential complexity into one corner, or the whole thing may be holed below the waterline. But if it does turn out to be nonsense, it will be nonsense for an interesting reason.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 02 18)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Clemens Kupke",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/clemens.kupke/",
     insturl    = "",
     title      = "Coalgebraic Dynamic Logics",
     abstract   = "I will present work in progress on a (co)algebraic framework that allows to uniformly study dynamic modal logics such as Propositional Dynamic Logic (PDL) and Game Logic (GL). Underlying our framework is the basic observation that the program/game constructs of PDL/GL arise from monad structure, and that the axioms of these logics correspond to compatibility requirements between the modalities and this monad structure. So far we have a general soundness and completeness result for PDL-like logics wrt T-coalgebras for a monad T. I will discuss our completeness theorem, its limitations and plans for extending our results. [For the latter we might require the help of koalas, wallabies and wombats.]",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 02 11)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Fredrik Nordvall Forsberg",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/fredrik.nordvall-forsberg/",
     insturl    = "",
     title      = "Introduction to (infinity, 1)-categories",
     abstract   = "Infinity-categories simultaneously generalise topological spaces and categories. Intuitively, a (weak) infinity-category should have objects, morphisms, 2-morphisms, 3-morphisms, ... and identity morphisms and composition which is suitably unital and associative up to a higher (invertible) morphism (the number 1 in (infinity, 1)-category means that k-morphisms for k &gt; 1 are invertible) . The trouble begins when one naively tries to make these coherence conditions precise; already 4-categories famously requires <a href='http://math.ucr.edu/home/baez/trimble/tetracategories.html'>51 pages to define explicitly</a>. Instead, one typically turns to certain \"models\" of infinity-categories that encode all this data implicitly, usually as some kind of simplicial object with additional properties. I will introduce two such models: quasicategories and complete Segal spaces. If time allows, I will also discuss hopes and dreams about internalising these notions in Type Theory, which should give a satisfactory treatment of category theory in Type Theory without assuming Uniqueness of Identity Proofs.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 02 04)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Neil Ghani",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/neil.ghani/",
     insturl    = "",
     title      = "Two Constructions on Games",
     abstract   = "I've been working with Jules Hedges on a compositional model of game theory. After briefly reminding you of the model, I'll discuss where we are at &ndash; namely the definition of morphisms between games, and the treatment of choice and iteration of games. I'm hoping you will be able to shed some light on this murky area. There is a draft paper if anyone is interested.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2016 01 28)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Introduction to sheaves",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2016 01 21)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Guillaume Allais",
     institute  = "MSP",
     speakerurl = "http://gallais.org",
     insturl    = "",
     title      = "Overview: A Type Theory for Probabilistic and Bayesian Reasoning",
     abstract   = "The probabilistic calculus introduced in the eponymous paper by Robin Adams and Bart Jacobs is inspired by quantum theory by considering that conditional probabilities can be seen as side-effect-free measurements. A type-theoretic treatment of this semantic observation leads, once equipped with suitable computation rules, to the ability to do exact conditional inference.\n\nI will present the type theory and the accompanying computation rules proposed in the paper and discuss some of the interesting open questions I will be working on in the near future. ",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
     date  = (UTCTime (fromGregorian 2016 01 13)
                      (timeOfDayToTime (TimeOfDay 13 40 0))),
     title = "MSP101 Planning session",
     url = "",
     location = "LT1310",
     locationurl= "",
     description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 12 02)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "Introduction to coherence spaces, and how to use them for dependent session types",
     abstract   = "Coherence spaces are a simplification of Scott domains, introduced by Girard to give a semantics to the polymorphic lambda-calculus. While investigating the structure of coherence spaces, Girard noticed that the denotation of the function type in coherence spaces can be decomposed into two independent constructions: a linear (\"use-once\") function space, and a many-uses-into-one-use modality. And so Linear Logic was discovered.\n\nCoherence spaces are interesting because they model computation at a low level in terms of interchange of atomic 'tokens' of information. This makes them a useful tool for understanding several different computational phenomena.\n\nIn this talk, I'll show how coherence spaces naturally model session types, via Wadler's interpretation of Classical Linear Logic as a session-typed pi-calculus, and how that interpretation extends to an interpretation of a dependently typed version of session types.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
  date       = (UTCTime (fromGregorian 2015 11 18)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Bram Westerbaan",
  institute  = "Nijmegen",
  speakerurl = "http://bram.westerbaan.name/home/",
  insturl    = "http://www.ru.nl/icis/",
  title      = "The categorical structure of von Neumann algebras",
  abstract   = "I would like to speak about the categorical structure of the category of von Neumann algebras, with as morphisms normal, completely positive, unital linear maps.  For some years my colleagues and I have worked on identifying basic structures in this category, and while surprisingly many things do not exist or do not work in this category (it's not a topos or even an extensive category, there's no epi-mono factorisation system, there is no dagger, colimits &mdash; if they exist at all &mdash; are horrendous...), we did find some structure (the products behave reasonable in some sense, there is a 'quotient', and 'comprehension', and we have a universal property for the minimal Stinespring dilation, and a universal property for M_2&mdash;the qubit).  There is no deep category theory involved by any standards, and I promise I will spare you the functional analysis, so it should be a light talk.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2015 11 11)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Clemens Kupke",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/clemens.kupke/",
  insturl    = "",
  title      = "The Power of Coalitions",
  abstract   = "Due to popular demand I am going to give a brief introduction to Marc Pauly's Coalition Logic, a propositional modal logic that allows to reason about the power of coalitions in strategic games. I will provide motivation and basic definitions. Furthermore I am planning to discuss how the logic can be naturally viewed as a coalgebraic logic and what we gain from the coalgebraic perspective. Finally &mdash; if (preparation) time permits &mdash; I am going to say how the logic can be applied to the area of mechanism design.",
  location   = "LT1310",
  material   = [] }
 ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2015 10 22)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Viktor Winschel",
     institute  = "ETH Zurich",
     speakerurl = "http://www.vikwin.de/",
     insturl    = "http://www.irme.ethz.ch/",
     title      = "Semantics for Social Systems where Theory about the System Changes the System",
     abstract   = "In societies the notion of a law is not given by nature. Instead social dynamics are driven by the theories the citizens have about the dynamics of the social system. Obviously self-referential mathematical structures, developed in computer science, are candidates to be applied in social sciences for this foundational issue. We will see a prototypical game theoretical problem where several computer scientific tools can help to discuss these structures. It is a long standing problem in economics and of human kind and their scarce recourses: \"should we go to a bar that is always so overcrowded\"?",
     location   = "LT1415",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 10 06)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Alessandra Palmigiano",
     institute  = "TU Delft",
     speakerurl = "http://www.appliedlogictudelft.nl/alessandra-palmigiano/",
     insturl    = "http://www.appliedlogictudelft.nl/",
     title      = "Proof-theoretic semantics for dynamic logics",
     abstract   = "Research in the proof theory of dynamic logics has recently gained momentum. However, features which are essential to these logics prevent standard proof-theoretic methodologies to apply straightforwardly. In this talk, I will discuss the main properties proof systems should enjoy in order to serve as suitable environments for an inferential theory of meaning (proof-theoretic semantics). Then, I'll identify the main challenges to the inferential semantics research agenda posed by the very features of dynamic logics which make them so appealing and useful to applications. Finally, I'll illustrate a methodology generating multi-type display calculi, which has been successful on interesting case studies (dynamic epistemic logic, propositional dynamic logic, monotone modal logic).\n\nReferences\n\n1. S. Frittella, G. Greco, A. Kurz, A. Palmigiano, V. Sikimić, A Proof-Theoretic Semantic Analysis of Dynamic Epistemic Logic, Journal of Logic and Computation, Special issue on Substructural logic and information dynamics (2014), DOI:10.1093/logcom/exu063.\n\n2. S. Frittella, G. Greco, A. Kurz, A. Palmigiano, V. Sikimić, Multi-type Display Calculus for Dynamic Epistemic Logic, Journal of Logic and Computation, Special issue on Substructural logic and information dynamics (2014), DOI:10.1093/logcom/exu068.\n\n3. S. Frittella, G. Greco, A. Kurz, A. Palmigiano, Multi-type Display Calculus for Propositional Dynamic Logic, Special issue on Substructural logic and information dynamics (2014), DOI:10.1093/logcom/exu064.\n\n4. S. Frittella, G. Greco, A. Kurz, A. Palmigiano, V. Sikimić, Multi-type Sequent Calculi, Proc. Trends in Logic XIII, A. Indrzejczak,  J. Kaczmarek, M. Zawidski eds, p 81-93, 2014.\n\n5. G. Greco, A. Kurz, A. Palmigiano, Dynamic Epistemic Logic Displayed,  Proc.  Fourth International Workshop on Logic, Rationality and Interaction (LORI 2013) Eds: Huaxin Huang, Davide Grossi, Olivier Roy eds, 2013.",
     location   = "LT1415",
     material   = [PDF "2015-10-06_palmigiano.pdf" Nothing] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 09 25)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Pierre Lescanne",
     institute  = "ENS Lyon",
     speakerurl = "http://perso.ens-lyon.fr/pierre.lescanne/",
     insturl    = "http://www.ens-lyon.fr/LIP/PLUME/",
     title      = "Coinduction, Equilibrium and Rationality of Escalation",
     abstract   = "Escalation is the behavior of players who play forever in the same game.  Such a situation is a typical field for application of coinduction which is the tool conceived for reasoning in infinite mathematical structures. In particular, we use coinduction to study formally the game called --dollar auction--, which is considered as the paradigm of escalation.  Unlike what is admitted since 1971, we show that, provided one assumes that the other agent will always stop, bidding is rational, because it results in a subgame perfect equilibrium.  We show that this is not the only rational strategy profile (the only subgame perfect equilibrium).  Indeed if an agent stops and will stop at every step, whereas the other agent keeps bidding, we claim that he is rational as well because this corresponds to another subgame perfect equilibrium.  In the infinite dollar auction game the behavior in which both agents stop at each step is not a Nash equilibrium, hence is not a subgame perfect equilibrium, hence is not rational.  Fortunately, the notion of rationality based on coinduction fits with common sense and experience.  Finally the possibility of a rational escalation in an arbitrary game can be expressed as a predicate on games and the rationality of escalation in the dollar auction game can be proved as a theorem which we have verified in the proof assistant COQ.  In this talk we will recall the principles of infinite extensive games and use them to introduce coinduction and equilibria (Nash equilibrium, subgame perfect equilibrium).  We will show how one can prove that the two strategy profiles presented above are equilibria and how this leads to a \"rational\" escalation in the dollar auction.  We will show that escalation may even happen in much simpler game named 0,1-game.",
     location   = "LT1415",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 10 28)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan/",
     insturl    = "",
     title      = "Interacting Frobenius Algebras Are Hopf",
     abstract   = "Commutative Frobenius algebras play an important role in both Topological Quantum Field Theory and Categorical Quantum Mechanics;  in the first case they correspond to 2D TQFTs, while in the second they are non-degenerate observables.  I will consider the case of \"special\" Frobenius algebras, and their associated group of phases.  This gives rise to a free construction from the category of abelian groups to the PROP generated by this Frobenius algebra.  Of course a theory with only one observable is not very interesting.  I will consider how two such PROPs should be combined, and show that if the two algebras (i) jointly form a bialgebra and (ii) their units are \"mutually real\"; then they jointly form a Hopf algebra.  This gives a \"free\" model of a pair of strongly complementary observables.  I will also consider which unitary maps must exist in such models.\n\nSlides are <a href='http://personal.strath.ac.uk/ross.duncan/talks/2015/vienna.pdf'>here</a> if you want a preview.",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
    date  = (UTCTime (fromGregorian 2015 10 21)
                    (timeOfDayToTime (TimeOfDay 12 30 0))),
    title = "SPLS",
    url = "http://simonjf.com/spls-oct2015/",
    location = "Edinburgh",
    locationurl= "",
    description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 10 14)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Guillaume Allais",
     institute  = "MSP",
     speakerurl = "http://gallais.org",
     insturl    = "",
     title      = "Type and Scope Preserving Semantics",
     abstract   = "We introduce a notion of type and scope preserving semantics  generalising Goguen and McKinna's \"Candidates for Substitution\" approach to defining one traversal generic enough to be instantiated to renaming first and then substitution. Its careful distinction of environment and model values as well as its variation on a structure typical of a Kripke semantics make it capable of expressing renaming and substitution but also various forms of Normalisation by Evaluation as well as, perhaps more surprisingly, monadic computations such as a printing function.\n\nWe then demonstrate that expressing these algorithms in a common framework yields immediate benefits: we can deploy some logical relations generically over these instances and obtain for instance the fusion lemmas for renaming, substitution and normalisation by evaluation as simple corollaries of the appropriate fundamental lemma. All of this work has been formalised in Agda.",
     location   = "LT1310",
     material   = [PDF "2015-10-21_gallais.pdf" Nothing,
                   Link "https://github.com/gallais/type-scope-semantics" "Github repository with paper and sources"] }
  ,

  SpecialEvent {
    date  = (UTCTime (fromGregorian 2015 10 07)
                    (timeOfDayToTime (TimeOfDay 12 00 0))),
    title = "STP",
    url = "http://staff.computing.dundee.ac.uk/christopherwarburton/stp/2015/10/",
    location = "Dundee",
    locationurl= "",
    description = ""
    }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2015 09 30)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "ICFP trip report",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
    date  = (UTCTime (fromGregorian 2015 09 23)
                    (timeOfDayToTime (TimeOfDay 11 30 0))),
    title = "MSP101 Planning session",
    url = "",
    location = "LT1310",
    locationurl= "",
    description = ""
    }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 09 16)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Giovanni Ciná",
     institute  = "Amsterdam",
     speakerurl = "https://sites.google.com/site/homepagegcina/",
     insturl    = "http://www.illc.uva.nl/",
     title      = "Contextuality, path logic and a modal logic for Social Choice Theory",
     abstract   = "Social Choice functions are procedures used to aggregate the preferences of individuals into a collective decision. We outline two recent abstract approaches to SCFs: a recent sheaf treatment of Arrow's Theorem by Abramsky and a modal logic studied by Ulle Endriss and myself. We show how to relate the categorical modelling of Social Choice problems to said work in Modal Logic. This insight prompts a number of research questions, from the relevance of sheaf-like condition to the modelling of properties of SCFs on varying electorates.",
     location   = "LT1310",
     material   = [] }
  ,


  Talk {
     date       = (UTCTime (fromGregorian 2015 09 2)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan/",
     insturl    = "",
     title      = "Concurrent games",
     abstract   = "",
     location   = "LT1310",
     material   = [Whiteboard "2015-09-02_Ross"] }
  ,


  Talk {
     date       = (UTCTime (fromGregorian 2015 08 13)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Jeremy Siek",
     institute  = "Indiana University",
     speakerurl = "http://wphomes.soic.indiana.edu/jsiek/",
     insturl    = "http://lambda.soic.indiana.edu/home",
     title      = "The Polymorphic Blame Calculus and Parametricity",
     abstract   = "The Polymorphic Blame Calculus (PBC) of Ahmed et al. (2011) combines polymorphism, as in System F, with type dynamic and runtime casts, as in the Blame Calculus. The PBC is carefully designed to ensure relational parametricity, that is, to ensure that type abstractions do not reveal their abstracted types. The operational semantics of PBC uses runtime sealing and syntactic barriers to enforce parametricity. However, it is an open question as to whether these mechanisms actually guarantee parametricity for the PBC. Furthermore, there is some question regarding what parametricity means in the context of the PBC, as we have examples that are morally parametric but not technically so. This talk will review the design of the PBC with respect to ensuring parametricity and hopefully start a discussion regarding what parametricity should mean for the PBC.",
     location   = "LT1415",
     material   = [PDF "2015-08-13_siek.pdf" Nothing] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 08 26)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Comonadic Cellular Automata II",
     abstract   = "This is a sequel to my last 101 where I spoke about describing cellular automata as algebras of a comonad on Set. I'll describe how we can make sense of \"generalised cellular automata\" (probabilistic/non-deterministic/quantum, for example) as comonads on other categories via distributive laws of monads and comonads.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 07 23)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan/",
     insturl    = "",
     title      = "Free interacting observables",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  
  Talk {
     date       = (UTCTime (fromGregorian 2015 05 26)
                           (timeOfDayToTime (TimeOfDay 16 0 0))),
     speaker    = "Paul Levy",
     institute  = "Birmingham",
     speakerurl = "http://www.cs.bham.ac.uk/~pbl/",
     insturl    = "http://www.cs.bham.ac.uk/",
     title      = "Final coalgebras from corecursive algebras",
     abstract   = "We give a technique to construct a final coalgebra out of modal logic.  An element of the final coalgebra is a set of modal formulas.  The technique works for both the finite and the countable powerset functors.  Starting with a corecursive algebra, we coinductively obtain a suitable subalgebra.  We see - first with an example, and then in the general setting of modal logic on a dual adjunction - that modal theories form a corecursive algebra, so that this construction may be applied.\n\nWe generalize the framework to categories other than Set, and look at examples in Poset and in the opposite category of Set.",
     location   = "LT1415",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 05 13)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Federico Orsanigo",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Two-dimensional proof-relevant parametricity",
     abstract   = "Relational parametricity is a fundamental concept within theoretical computer science and the foundations of programming languages, introduced by John Reynolds. His fundamental insight was that types can be interpreted not just as functors on the category of sets, but also as equality preserving functors on the category of relations. This gives rise to a model where polymorphic functions are uniform in a suitable sense; this can be used to establish e.g. representation independence, equivalences between programs, or deriving useful theorems about programs from their type alone.\n\n The relations Reynolds considered were proof-irrelevant, which from a type theoretic perspective is a little limited. As a result, one might like to extend his work to deal with proof-relevant, i.e. set-valued relations. However naive attempts to do this fail: the fundamental property of equality preservation cannot be established. Our insight is that just as one uses parametricity to restrict definable elements of a type, one can use parametricity of proofs to ensure equality preservation. The idea of parametricity for proofs can be formalised using the idea of 2-dimensional logical relations. Interestingly, these 2-dimensional relations have clear higher dimensional analogues where (n+1)-relations are fibered over a n-cube of n-relations. Thus the story of proof relevant logical relations quickly expands into one of higher dimensional structures similar to the cubical sets which arises in Homotopy Type Theory. Of course, there are also connections to Bernardy and Moulin's work on internal parametricity.",
     location   = "LT1310",
     material   = [] }
  ,

  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2015 05 08)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Svante Linusson",
     institute  = "KTH, Stockholm",
     speakerurl = "https://people.kth.se/~linusson/",
     insturl    = "https://www.kth.se/en/sci/institutioner/math",
     title      = "The probability of the Alabama paradox",
     abstract   = "There exists various possible methods to distribute seats proportionally between states (or parties) in a parliament. Hamilton's method (also known as the method of largest reminder) was abandoned in the USA because of some drawbacks, in particular the possibility of the Alabama paradox, but it is still in use in many other countries.\n\nIn recent work (joint with Svante Janson) we give, under certain assumptions, a closed formula for the probability that the Alabama paradox occurs given the vector p_1,...,p_m of relative sizes of the states.\n\nFrom the theorem we deduce a number of consequences. For example it is shown that the expected number of states that will suffer from the Alabama paradox is asymptotically bounded above by 1/e. For random (uniformly distributed) relative sizes p_1,...,p_m the expected number of states to suffer from the Alabama paradox converges to slightly more than a third of this, or approximately 0.335/e=0.123, as m -> infinity.\n\n I will assume no prior knowledge of electoral mathematics, but begin by giving a brief background to various methods suggested and used for the distribution of seats proportionally in a parliament (it's all in the rounding).",
     location   = "LT1415" }
  ,

   Talk {
     date       = (UTCTime (fromGregorian 2015 05 06)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Jules Hedges",
     institute  = "Queen Mary University of London",
     speakerurl = "http://www.eecs.qmul.ac.uk/~julesh/",
     insturl    = "http://theory.eecs.qmul.ac.uk/",
     title      = "Game theory in string diagrams",
     abstract   = "We define a category whose morphisms are 'games relative to a continuation', designed to allow games to be built recursively from simple components. The resulting category has interesting structure similar to (but weaker than) compact closed, and comes with an associated string diagram language.",
     location   = "LT1310",
     material   = [] }
  ,
      
   Talk {
     date       = (UTCTime (fromGregorian 2015 04 29)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Bob Atkey",
     institute  = "MSP",
     speakerurl = "http://bentnib.org",
     insturl    = "",
     title      = "An Introduction to Differential Privacy",
     abstract   = "Let's say you have a database of people's private information. For SCIENCE, or some other reason, you want to let third parties query your data to learn aggregate information about the people described in the database. However, you have a duty to the people whose information your database contains not to reveal any of their individual personal information. How do you determine which queries you will let third parties execute, and those you will not?\n\n\"Differential Privacy\" defines a semantic condition on probabilistic queries that identifies queries that are safe to execute, up to some \"privacy budget\".\n\nI'll present the definition of differential privacy, talk a bit about why it is better than some 'naive' alternatives (e.g., anonymisation), and also describe how the definition can be seen as an instance of relational parametricity.\n\nA good place to read about the definition of differential privacy is the book \"The Algorithmic Foundations of Differential Privacy\" by Cynthia Dwork and Aaron Roth.",
     location   = "LT1310",
     material   = [Link "http://www.cis.upenn.edu/~aaroth/Papers/privacybook.pdf " "<em>The Algorithmic Foundations of Differential Privacy</em> by Cynthia Dwork and Aaron Roth"] }
  ,

  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2015 03 20)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Chris Heunen",
     institute  = "Oxford",
     speakerurl = "http://www.cs.ox.ac.uk/people/chris.heunen/",
     insturl    = "http://www.cs.ox.ac.uk/",
     title      = "Approximating transition systems",
     abstract   = "Classical computation, invertible computation, probabilistic computation, and quantum computation, form increasingly more sophisticated labelled transition systems. How can we approximate a transition system by less sophisticated ones? Considering all ways to get probabilistic information out of a quantum system leads to domain-theoretic ideas, that also apply in the accompanying Boolean logic. I will survey to what extent these domains characterise the system, leading with examples from quantum theory, in a way that is accessible to a broad audience of computer scientists, mathematicians, and logicians.",
     location   = "LT1415" }
  ,
  
  DepartmentalSeminar {
     date       = (UTCTime (fromGregorian 2015 04 29)
                           (timeOfDayToTime (TimeOfDay 15 0 0))),
     speaker    = "Uli Kraehmer",
     institute  = "University of Glasgow",
     speakerurl = "http://www.maths.gla.ac.uk/~ukraehmer/",
     insturl    = "http://www.maths.gla.ac.uk/",
     title      = "Cyclic homology from mixed distributive laws",
     abstract   = "In pure mathematics, cyclic homology is an invariant of associative algebras that is motivated by algebra, topology and even mathematicial physics. However, when studied from an abstract point of view it turns out to be an invariant of a pair of a monad and a comonad that are related by a mixed distributive law, and I speculate that this could lead to some potential applications in computer science.\n\n(based on joint work with Niels Kowalzig and Paul Slevin)",
     location   = "LT1415" }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2015 04 22)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Guillaume Allais",
     institute  = "MSP",
     speakerurl = "http://gallais.org",
     insturl    = "",
     title      = "Patterns to avoid: (dependent) stringly-typed programming",
     abstract   = "Type : Set\nType = String -> Bool",
     location   = "LT1310",
     material   = [Link "https://github.com/gallais/STRINaGda" "Github repository"] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2015 03 11)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Peter Hancock",
     institute  = "",
     speakerurl = "",
     insturl    = "",
     title      = "Collapsing",
     abstract   = "<p>The topic comes from theory of infinitary proofs, and cut-elimination.  In essence it is about nicely-behaved maps from higher \"infinities\" to lower ones, as the infinitary proofs are er, infinite, and can be thought of as glorified transfinite iterators. What might nice behaviour mean?</p><p>You can think of it as how to fit an uncountable amount of beer into a bladder whose capacity is merely countable. (Or maybe even finite.)</p><p>The most ubiquitous form of infinity is the regular cardinal, iepassing from a container F to F + (mu F -> _), where mu is the W-type operation.  I'll \"explain\" regular collapsing as being all about diagonalisation.</p>",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
    date  = (UTCTime (fromGregorian 2015 03 04)
                    (timeOfDayToTime (TimeOfDay 14 0 0))),
    title = "A HoTT-Date with Thorsten Altenkirch",
    url = "http://msp.cis.strath.ac.uk/hott-afternoon/",
    location = "LT1415",
    locationurl= "",
    description = ""
    }
  ,

    SpecialEvent {
    date  = (UTCTime (fromGregorian 2015 02 18)
                    (timeOfDayToTime (TimeOfDay 12 0 0))),
    title = "SPLS @ Strathclyde",
    url = "",
    location = "Royal College Building, room RC512",
    locationurl= "http://www.strath.ac.uk/maps/royalcollegebuilding/",
    description = ""
    }
  ,
  
  Talk {
  date       = (UTCTime (fromGregorian 2015 2 11)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Conor McBride",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/conor.mcbride/",
  insturl    = "",
  title      = "Totality versus Turing Completeness?",
  abstract   = "I gave an <a href='http://www.dcs.gla.ac.uk/research/spls/Mar12/'>SPLS talk</a>, which was mostly propaganda, about why people should stop claiming that totality loses Turing completeness. There was some technical stuff, too, about representing a recursive definition as a construction in the free monad whose effect is calling out to an oracle for recursive calls: that tells you what it is to be recursive without prejudicing how to run it. I'm trying to write this up double-quick as a paper for the miraculously rubbery MPC deadline, with more explicit attention to the monad morphisms involved. So I'd be grateful if you would slap down the shtick and make me more morphic. The punchline is that the Bove-Capretta domain predicate construction is a (relative) monad morphism from the free monad with a recursion oracle to the (relative) monad of Dybjer-Setzer Induction-Recursion codes. But it's worth looking at other monad morphisms (especially to the Delay monad) along the way.",
  location   = "LT1415",
  material   = [] }
 ,
  
  Talk {
  date       = (UTCTime (fromGregorian 2015 1 28)
                        (timeOfDayToTime (TimeOfDay 16 30 0))),
  speaker    = "Tarmo Uustalu",
  institute  = "Institute of Cybernetics, Tallinn",
  speakerurl = "http://www.cs.ioc.ee/~tarmo/",
  insturl    = "http://cs.ioc.ee/",
  title      = "Runners for your computations",
  abstract   = "What structure is required of a set so that computations in a given notion of computation can be run statefully this with set as the state space? Some answers: To be able to serve stateful computations, a set must carry the structure of a lens; for running interactive I/O computations statefully, a \"responder-listener\" structure is necessary etc. I will observe that, in general, to be a runner of computations for an algebraic theory (defined as a set equipped with a monad morphism between the corresponding monad and the state monad for this set) is the same as to be a comodel of this theory, ie a coalgebra of the corresponding comonad. I will work out a number of instances. I will also compare runners to handlers.",
  location   = "LT1415",
  material   = [] }
 ,
  
  Talk {
  date       = (UTCTime (fromGregorian 2015 1 22)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "James Chapman",
  institute  = "Institute of Cybernetics, Tallinn",
  speakerurl = "http://cs.ioc.ee/~james/",
  insturl    = "http://cs.ioc.ee/",
  title      = "Termination, later",
  abstract   = "It would be a great shame if dependently-typed programming (DTP) restricted us to only writing very clever programs that were a priori structurally recursive and hence obviously terminating. Put another way, it is a lot to ask of the programmer to provide the program and its termination proof in one go, programmers should also be supported in working step-by-step. I will show a technique that lowers the barrier of entry, from showing termination to only showing productivity up front, and then later providing the opportunity to show termination (convergence). I will show an example of a normaliser for STLC represented in Agda as a potentially non-terminating but nonetheless productive corecursive function targeting the coinductive delay monad.\n\n(Joint work with  Andreas Abel)",
  location   = "LT1310",
  material   = [] }
 ,

  Talk {
  date       = (UTCTime (fromGregorian 2014 12 17)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Conor McBride",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/conor.mcbride/",
  insturl    = "",
  title      = "Worlds, Types and Quantification",
  abstract   = "I've managed to prove a theorem that I've been chasing for a while. The trouble, of course, was <em>stating</em> it. I'll revisit the motivation for extending type systems with an analysis of not just <em>what</em> things are but <em>where</em>, <em>when</em>, <em>whose</em>, etc. The idea is that typed constructions occur in one of a preordered set of worlds, with scoping restricted so that information flows only \"upwards\" from one world to another. Worlds might correspond to \"at run time\" and \"during typechecking\", or to computation in distinct cores, or in different stages, etc. What does the dependent function space mean in this setting? For a long time, I thought that each world had its own universal quantifier, for abstracting over stuff from that world. Failure to question this presumption is what led to failure to state a theorem I could prove. By separating quantifiers from worlds, I have fixed the problem. I'll show how to prove the key fact: if I can build something in one world and then move it to another, then it will also be a valid construction once it has arrived at its destination.",
  location   = "LT1310",
  material   = [] }
 ,

  Talk {
     date       = (UTCTime (fromGregorian 2014 12 10)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Aleks Kissinger",
     institute  = "Oxford",
     speakerurl = "http://www.cs.ox.ac.uk/people/aleks.kissinger/about.html",
     insturl    = "http://www.cs.ox.ac.uk/activities/quantum/",
     title      = "ZX and PROPs",
     abstract   = "",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
    date  = (UTCTime (fromGregorian 2014 12 03)
                    (timeOfDayToTime (TimeOfDay 14 0 0))),
    title = "HoTT reading group @ Strathclyde",
    url = "http://homepages.inf.ed.ac.uk/s1225336/hott-reading-group/",
    location = "LT1310",
    locationurl= "",
    description = "We will read the paper <a href='http://drops.dagstuhl.de/opus/volltexte/2014/4628/pdf/7.pdf'>A Model of Type Theory in Cubical Sets</a> by <a href='http://www.ii.uib.no/~bezem/'>Marc Bezem</a>, <a href='http://www.cse.chalmers.se/~coquand/'>Thierry Coquand</a> and <a href='http://www.cse.chalmers.se/~simonhu/'>Simon Huber</a>. Thierry's <a href='http://www.cse.chalmers.se/~coquand/comp.pdf'>Variation on cubical sets</a> might also be useful. <em>Administrative details</em>: meet for lunch at 12am for those who want to, reading group starts at 2pm."
    }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2014 11 19)
                           (timeOfDayToTime (TimeOfDay 12 0 0))),
     speaker    = "Neil Ghani and Clemens Kupke",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Arrow's Theorem and Escalation",
     abstract   = "Neil and Clemens will report back from the <a href='http://www.cs.le.ac.uk/people/akurz/lsb.html'>Lorentz Center Workshop on Logics for Social Behaviour</a>.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2014 11 26)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Ross Duncan",
     institute  = "MSP",
     speakerurl = "http://personal.strath.ac.uk/ross.duncan/",
     insturl    = "",
     title      = "Diagrammatic languages for monoidal categories",
     abstract   = "Monoidal categories are essentially 2-dimensional things, so why on earth would we represent them using a linear string of symbols?  I'll talk about how to use string diagrams for monoidal categories, graph rewriting for reasoning within them, and how the syntax can be extended to handle certain kinds of infinitary expressions with the infamous !-box.  If there's time I'll finish with some half-baked (eh... basically still looking for the on switch of the oven...) ideas of how to generalise them.",
     location   = "LT1310",
     material   = [] }
  ,
  
  Talk {
     date       = (UTCTime (fromGregorian 2014 11 06)
                           (timeOfDayToTime (TimeOfDay 9 0 0))),
     speaker    = "Kevin Dunne",
     institute  = "MSP",
     speakerurl = "",
     insturl    = "",
     title      = "Comonadic Cellular Automata",
     abstract   = "Kevin will be giving an informal talk about some of the stuff he has been learning about. He'll give the definition of a cellular automaton and then talk about how this definition can be phrased in terms of a comonad.",
     location   = "LT1310",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2014 11 05)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Shin-ya Katsumata",
     institute  = "Kyoto University",
     speakerurl = "http://www.kurims.kyoto-u.ac.jp/~sinya/index-e.html",
     insturl    = "http://www.kurims.kyoto-u.ac.jp/en/index.html",
     title      = "Logical Relations for Monads by Categorical TT-Lifting",
     abstract   = "Logical relations are widely used to study various properties of typed lambda calculi. By extending them to the lambda calculus with monadic types, we can gain understanding of the properties on functional programming languages with computational effects. Among various constructions of logical relations for monads, I will talk about a categorical TT-lifting, which is a semantic analogue of Lindley and Stark's leapfrog method.\n\nAfter reviewing some fundamental properties of the categorical TT-lifting, we apply it to the problem of relating two monadic semantics of a call-by-value functional programming language with computational effects. This kind of problem has been considered in various forms: for example, the relationship between monadic style and continuation passing style representations of call-by-value programs was studied around '90s. We give a set of sufficient conditions to solve the problem of relating two monadic semantics affirmatively. These conditions are applicable to a wide range of such problems.",
     location   = "Boardroom (LT1101d)",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2014 10 27)
                           (timeOfDayToTime (TimeOfDay 14 0 0))),
     speaker    = "Dominic Orchard",
     institute  = "Imperial College London",
     speakerurl = "http://www.cl.cam.ac.uk/~dao29/",
     insturl    = "http://mrg.doc.ic.ac.uk/",
     title      = "Constructing analysis-directed semantics",
     abstract   = "All kinds of semantics are syntax directed: the semantics follows from the syntax. Some varieties of semantics are syntax and type directed. In this talk, I'll discuss syntax, type, <em>and</em> analysis directed semantics (analysis-directed semantics for short!), for analyses other than types. An analysis-directed semantics maps from terms coupled with derivations of a static program analysis into some semantic domain. For example, the simply-typed lambda calculus with an effect system maps to the category generated by a strong parametric effect monad (due to Katsumata) and a bounded-linear logic-like analysis (described as a coeffect systems) maps to a category generated by various structures related to monoidal comonads. I'll describe a general technique for building analysis-directed semantics where semantic objects and analysis objects have the same structure and are coupled by lax homomorphisms between them. This aids proving semantic properties: the proof tree of an equality for two program analyses implies the rules needed to prove equality of the programs' denotations.",
     location   = "Boardroom (LT1101d)",
     material   = [] }
  ,

  Talk {
     date       = (UTCTime (fromGregorian 2014 11 12)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Peter Hancock",
     institute  = "",
     speakerurl = "",
     insturl    = "",
     title      = "Lambda-abstraction and other diabolical contrivances",
     abstract   = "The topic is the unholy trinity of eta, zeta, and xi. I'll indicate how Curry managed to give a finite combinatorial axiomatisation of this nastiness, by anticipating (almost-but-not-<em>quite</em>) McBride et al's applicative functors.",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
    date  = (UTCTime (fromGregorian 2014 10 29)
                    (timeOfDayToTime (TimeOfDay 12 0 0))),
    title = "SICSA CSE Meeting on Effects and Coeffects Systems and their use for resource control",
    url = "http://staff.computing.dundee.ac.uk/marcogaboardi/effcoeff.html",
    location = "Dundee",
    locationurl= "",
    description = ""
    }
  ,
 
  Talk {
     date       = (UTCTime (fromGregorian 2014 10 22)
                           (timeOfDayToTime (TimeOfDay 11 0 0))),
     speaker    = "Neil Ghani",
     institute  = "MSP",
     speakerurl = "https://personal.cis.strath.ac.uk/neil.ghani/",
     insturl    = "",
     title      = "Higher dimensional parametricity and its cubical structure",
     abstract   = "Neil will talk about partial progress made during the summer on higher dimensional parametricity and the cubical structures that seem to arise. \nDetails will be kept to a minimum and, of course, concepts stressed.",
     location   = "LT1310",
     material   = [] }
  ,

  SpecialEvent {
    date  = (UTCTime (fromGregorian 2014 10 15)
                    (timeOfDayToTime (TimeOfDay 12 0 0))),
    title = "SPLS",
    url = "http://www.macs.hw.ac.uk/~rs46/spls-hwu-q3-2014/",
    location = "Heriot Watt",
    locationurl= "",
    description = ""
    }
  ,
  
 Talk {
  date       = (UTCTime (fromGregorian 2014 10 8)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Conor McBride",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/conor.mcbride/",
  insturl    = "",
  title      = "\"Real-world data\" and dependent types",
  abstract   = "Conor has offered to talk to us about what he has been thinking about recently. He says this includes models, views, and dependent types.",
  location   = "LT1310",
  material   = [] }
 ,
 
  Talk {
  date       = (UTCTime (fromGregorian 2014 10 1)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Fredrik Nordvall Forsberg",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/fredrik.nordvall-forsberg/",
  insturl    = "",
  title      = "Initial algebras via strong dinaturality, internally",
  abstract   = "  Or: My summer with Steve\nOr: How Christine and Frank were right, after all\nOr: Inductive types for the price of function extensionality and impredicative Set\n\n Christine Paulin-Mohring and Frank Pfenning suggested to use impredicative encodings of inductive types in the Calculus of Constructions, but this was later abandoned, since it is \"well-known\" that induction principles, i.e. dependent elimination,  can not be derived for this encoding. It now seems like it is  possible to give a variation of this encoding for which the  induction principle is derivable after all. The trick is to use  identity types to cut down the transformations of type  (Pi X : Set) . (F(X) -> X) -> X to the ones that are internally strongly dinatural, making use of a formula for a \"generalised Yoneda Lemma\" by Uustalu and Vene.",
  location   = "LT1310",
  material   = [] }
 ,

  Talk {
  date       = (UTCTime (fromGregorian 2014 8 15)
                        (timeOfDayToTime (TimeOfDay 15 0 0))),
  speaker    = "Fredrik Nordvall Forsberg",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/fredrik.nordvall-forsberg/",
  insturl    = "",
  title      = "Internal parametricity",
  abstract   = "",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 5 28)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Ohad Kammar",
  institute  = "Cambridge",
  speakerurl = "http://www.cl.cam.ac.uk/~ok259/",
  insturl    = "http://www.cl.cam.ac.uk/",
  title      = "Graphical algebraic foundations for monad stacks",
  abstract   = "Ohad gave an informal overview of his current draft, with the following abstract:\n\nHaskell incorporates computational effects modularly using sequences of monad transformers, termed monad stacks. The current practice is to find the appropriate stack for a given task using intractable brute force and heuristics. By restricting attention to algebraic stack combinations, we provide a linear-time algorithm for generating all the appropriate monad stacks, or decide no such stacks exist. Our approach is based on Hyland, Plotkin, and Power's algebraic analysis of monad transformers, who propose a graph-theoretical solution to this problem. We extend their analysis with a straightforward connection to the modular decomposition of a graph and to cographs, a.k.a. series-parallel graphs.\n\nWe present an accessible and self-contained account of this monad-stack generation problem, and, more generally, of the decomposition of a combined algebraic theory into sums and tensors, and its algorithmic solution. We provide a web-tool implementing this algorithm intended for semantic investigations of effect combinations and for monad stack generation.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 5 21)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Clemens Kupke",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/clemens.kupke/",
  insturl    = "",
  title      = "Coalgebraic Foundations of Databases",
  abstract   = " This 101 is intended to be a brainstorming session on possible links between the theory of coalgebras and the theory of databases. I will outline some ideas in this direction and I am looking forward to your feedback.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 5 14)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Guillaume Allais",
  institute  = "MSP",
  speakerurl = "https://gallais.org",
  insturl    = "",
  title      = "Resource aware contexts and proof search for IMLL",
  abstract   = "In Intuitionistic Multiplicative Linear Logic, the right introduction rule for tensors implies picking a 2-partition of the set of assumptions and use each component to inhabit the corresponding tensor's subformulas. This makes a naive proof search algorithm intractable. Building a notion of resource availability in the context and massaging the calculus into a more general one handling both resource consumption and a notion of \"leftovers\" of a subproof allows for a well-structured well-typed by construction proof search mechanism.\n\n Here is an <a href='http://gallais.org/code/LinearProofSearch/poc.LinearProofSearch.html'>Agda file</a> implementing the proof search algorithm.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 4 7)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Jamie Gabbay",
  institute  = "Heriot-Watt",
  speakerurl = "http://www.gabbay.org.uk",
  insturl    = "http://www.macs.hw.ac.uk/departments/computer-science.htm",
  title      = "Nominal sets",
  abstract   = "",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 4 2)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Thorsten Altenkirch",
  institute  = "Nottingham",
  speakerurl = "http://www.cs.nott.ac.uk/~txa/",
  insturl    = "http://www.cs.nott.ac.uk/",
  title      = "Towards cubical type theory",
  abstract   = "",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 3 19)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Guillaume Allais",
  institute  = "MSP",
  speakerurl = "http://www.gallais.org",
  insturl    = "",
  title      = "The selection monad transformer",
  abstract   = "Guillaume presented parts of Hedges' paper <a href='http://www.eecs.qmul.ac.uk/~julesh/papers/monad_transformers.pdf'>Monad transformers for backtracking search</a> (accepted to <a href='http://www.cs.bham.ac.uk/~pbl/msfp2014/'>MSFP 2014</a>). The paper extends Escardo and Oliva's work on the selection and continuation monads to the corresponding monad transformers, with applications to backtracking search and game theory.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 3 5)
                        (timeOfDayToTime (TimeOfDay 15 0 0))),
  speaker    = "Stuart Hannah",
  institute  = "Strathclyde Combinatorics",
  speakerurl = "https://personal.cis.strath.ac.uk/stuart.a.hannah/",
  insturl    = "http://combinatorics.cis.strath.ac.uk/",
  title      = "Lagrange inversion",
  abstract   =  "Stuart spoke about Lagrange inversion, a species-theoretic attempt to discuss the existence of solutions to equations defining species.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 2 28)
                        (timeOfDayToTime (TimeOfDay 14 0 0))),
  speaker    = "Neil Ghani",
  institute  = "MSP",
  speakerurl = "https://personal.cis.strath.ac.uk/neil.ghani/",
  insturl    = "",
  title      = "Species",
  abstract   = "Neil spoke about how adding structured quotients to containers gives rise to a larger class of data types.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 2 19)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Tim Revell",
  institute  = "MSP",
  speakerurl = "",
  insturl    = "",
  title      = "Synthetic Differential Geometry",
  abstract   = "Tim gave a brief introduction to Synthetic Differential Geometry. This is an attempt to treat smooth spaces categorically so we can extend the categorical methods used in the discrete world of computer science to the continuous work of physics. ",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 2 12)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Conor McBride",
  institute  = "MSP",
  speakerurl = "http://strictlypositive.org/",
  insturl    = "",
  title      = "Worlds",
  abstract   = "Conor talked about worlds (aka phases, aka times, ...): why one might bother, and how we might go about equipping type theory with a generic notion of permitted information flow.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 2 5)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Miles Gould",
  institute  = "Edinburgh",
  speakerurl = "http://homepages.inf.ed.ac.uk/mgould1/",
  insturl    = "http://www.inf.ed.ac.uk/",
  title      = "Operads",
  abstract   = "Miles has kindly agreed to come through and tell us about Operads, thus revisiting the topic of his PhD and the city in which he did it. ",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 1 22)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Lorenzo Malatesta",
  institute  = "MSP",
  speakerurl = "",
  insturl    = "",
  title      = "Overview of (extensions of) inductive-recursive definitions",
  abstract   = "",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2014 1 8)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Conor McBride",
  institute  = "MSP",
  speakerurl = "http://strictlypositive.org/",
  insturl    = "",
  title      = "On the recently found inconsistency of the univalence axiom in current Agda and Coq",
  abstract   = "",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2013 12 18)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Ross Duncan",
  institute  = "MSP",
  speakerurl = "http://personal.strath.ac.uk/ross.duncan/",
  insturl    = "",
  title      = "Quantum Mechanics",
  abstract   = "",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2013 11 20)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Robin Adams",
  institute  = "MSP visitor",
  speakerurl = "http://www.cs.rhul.ac.uk/~robin/",
  insturl    = "",
  title      = "Classical Type Theories",
  abstract   = "In 1987, Felleisen showed how to add control operators (for things like exceptions and unconditional jumps) to the untyped lambda-calculus.  In 1990, Griffin idly wondered what would happen if one did the same in a typed lambda calculus.  The answer came out: the inhabited types become the theorems of classical logic.\n\n I will present the lambda mu-calculus, one of the cleanest attempts to add control operators to a type theory.  We'll cover the good news: the inhabited types are the tautologies of minimal classical logic, and Godel's Double Negation translation from classical to intuitionistic logic turns into the CPS translation.\n\nAnd the bad news: control operators don't play well with other types. Add natural numbers (or some other inductive type), and you get inconsistency. Add Sigma-types, and you get degeneracy (any two objects of the same type are definitionally equal).  It gets worse: add plus-types, and you break Subject Reduction.",
  location   = "LT1310",
  material   = [] }
 ,

 Talk {
  date       = (UTCTime (fromGregorian 2013 11 13)
                        (timeOfDayToTime (TimeOfDay 11 0 0))),
  speaker    = "Guillaume Allais",
  institute  = "MSP",
  speakerurl = "http://www.gallais.org",
  insturl    = "",
  title      = "Continuation Passing Style",
  abstract   =
     "I chose to go through (parts of) Hatcliff and Danvy's paper <a href='http://dl.acm.org/citation.cfm?id=178053'> \"A Generic Account of Continuation-Passing Styles\"</a> (POPL 94) which gives a nice factorization of various CPS transforms in terms of:\
    \  <ul>\
    \   <li>embeddings from STLC to Moggi's computational meta-language\
    \       (either call-by-value, call-by-name, or whatever you can come\
    \       up with)</li>\
    \   <li>followed by a generic CPS transform transporting terms from ML\
    \       back to STLC</li>\
    \ </ul>\
    \ Here is <a href='http://gallais.org/code/GenericCPS/definitions.html'>an Agda file</a> containing what we had the time to see.",
  location   = "LT1310",
  material   = [] }
 ]
-}
