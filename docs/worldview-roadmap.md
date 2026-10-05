# Distinctions, Histories, and Possible Futures
## A research and reading roadmap through Flyxion’s frameworks

Prepared 5 October 2026 from the current public corpus and earlier project maps.

## The central finding

Flyxion’s corpus is most coherently approached as a family of theories about how systems preserve, lose, reconstruct, and act on distinctions. Its strongest common question is: **what must a system retain or regenerate in order to continue responsibly under changing constraints?** This question connects representation, memory, computation, intelligence, institutional legitimacy, economic participation, and ecological persistence. It also motivates a physical research program, but the social and computational theories do not require that physical program to be true.

The best introductory order therefore starts with epistemic discipline, distinctions, projection, history, admissibility, and repair. It introduces Spherepop as a language of consequential operations and RSVP as a language of distributed dynamics. Neither should be made the universal prerequisite for the other. Quantum interfaces and cosmology belong near the end of a specialized branch, rather than at the foundation of an explanation of economic relationships.

This is a reconstruction of a research program, not a claim that its components jointly constitute a completed scientific theory. Some connections are explicit in the primary texts, some are proposed constructions, and some are interpretive connections made in this roadmap. Keeping those statuses visible makes the worldview more coherent, rather than weaker.

## Scope and limits of this survey

The survey inventoried complete recursive trees for sixteen repositories: `library`, `spherepop`, `antivenom`, `adversaria`, `experiments`, `cosmology`, `philosophy`, `epistemology`, `textbook`, `intelligence`, `rsvp-lab`, `laboratory`, `drawing`, `research-projects`, `admissibility-lab`, and `hydra`. It also examined selected directories in `alphabet` and the `cutaway-reader` introduction. Eighty-two source files were retrieved, with abstracts, specifications, dependency ledgers, relevant sections, and selected examples examined. Large manuscripts were not audited line by line. Repository entries include assets, duplicates, drafts, and generated material, so their number would not measure the number of distinct theories.

The earlier June project map and briefing were read as historical guides. They already distinguished sibling frameworks and foregrounded history, reachability, repair, and admissibility. The current roadmap updates that organization using the newer central-theorem specification, Spherepop specification, admissible-degradation monograph, HYDRA architecture, Adversaria texts, and cosmology dependency ledger. It does not claim to exhaust every repository in the account’s public corpus, verify every citation, run the programs, or check every theorem.

Primary specifications take precedence over informal summaries. In particular, the Antivenom source guides are useful discovery aids but sometimes expand acronyms inconsistently. CLIO is documented here through authored manuscripts rather than through the unrelated repository bearing the same name. The MEM8 blueprint found in the existing collection names other collaborators and contains ambitious performance and consciousness claims; it should be treated as an adjacent collaborative architecture, not silently attributed to Flyxion or accepted as validated.

## The organizing distinction: three kinds of connection

A **prerequisite** is a concept without which a later argument cannot be understood. Projection is a prerequisite for a claim about information lost under projection. A **pedagogical connection** is a useful order of explanation that need not be a formal dependency. Learning repair before reading the economics essays helps, but those essays do not need a theorem about repair to make every argument. A **research bridge** is a proposed correspondence between frameworks. A functor between a Spherepop category and an RSVP construction, for example, has to be established for specified categories and assumptions. It does not follow from both frameworks using the word entropy.

The roadmap uses this distinction throughout. A common vocabulary supplies orientation. A formal translation supplies a much narrower result. An empirical claim requires evidence beyond either one.

## The reading order

### 1. Begin with claims, evidence, scope, and warrant

The ontology is best approached after establishing how an assertion earns its status. Adversaria’s basic unit combines a claim with evidence, a warrant, a scope, objections, and a current standing. Its scope discipline asks where a claim applies: to which population, context, time, measurement, and boundary. This prevents the familiar jump from a successful toy model to a statement about all intelligence or all reality.

The recommended reading is [Adversaria’s opening chapter](https://github.com/standardgalactic/adversaria/blob/main/monograph/ch01.tex), its [scope chapter](https://github.com/standardgalactic/adversaria/blob/main/monograph/ch04a.tex), and the [research-program evidence rules](https://github.com/standardgalactic/research-projects/blob/main/framework/RESEARCH_PROGRAM.md). The latter’s distinction between plotting released evidence, rerunning a program, certifying a result, and physically replicating a claim is valuable well beyond hardware.

The philosophical stance to acquire is modest but consequential: reality constrains our descriptions, while our access to it is partial and mediated. Agreement is not automatically truth, visibility is not standing, and successful execution is not automatically a certificate. These ideas should govern the rest of the roadmap.

### 2. Understand distinction before treating objects as primitives

A distinction is a difference that a particular system, observer, or task can register or act upon. It is not necessarily a consciously noticed difference, and it is not automatically a thermodynamic quantity. Objecthood can then be studied as the persistence of distinctions across transformations and observations, rather than assumed as a fully specified starting point.

The recommended reading is the early chapters of [Foundations of Distinction Geometry](https://github.com/standardgalactic/cosmology/blob/main/working/flyxion-frameworks.tex) together with [The Ecology of Distinctions](https://github.com/standardgalactic/textbook/blob/main/The_Ecology_of_Distinctions.tex). They provide the broad vocabulary. The relevant question is relational: for which observer, under which observation, and for which continuation does a difference constitute a distinction?

This stage does not require accepting the strongest claim that distinctions are the ultimate physical constituents of the universe. The weaker methodological position already does substantial work: descriptions should identify which differences they preserve and which differences their intended use requires.

### 3. Learn projection, compression, and observational equivalence

A projection maps a richer situation into a more restricted description. A screenshot, a numerical state vector, a financial score, a finished drawing, and a recorded answer can all be projections. Different histories can produce the same observed result. Equality of outputs therefore need not establish equality of the systems that produced them.

The recommended reading is [Representation Without Faithfulness](https://github.com/standardgalactic/alphabet/blob/core/roadmap/representation-without-faithfulness.tex) selectively alongside [States Without Histories](https://github.com/standardgalactic/alphabet/blob/core/roadmap/states_without_histories.tex). The central mathematical move is to inspect the fibers of an observation map: which underlying situations share the same observation?

A substantive primary treatment is [“CLIO: Constraint-Leveraged Inference and Optimisation,” Chapter 27 of the Alphabet cosmology manuscript](https://github.com/standardgalactic/alphabet/blob/6f7739b314f66b434c32e98b35d6545018e3ce26/cosmology/part5/ch27-clio-reconstruction.tex). It formulates reconstruction as the selection of an admissible state that minimizes observational mismatch together with a regularizing functional. In the chapter’s notation, the objective is \(\sum_i d(F(x),m_i)^2+\lambda\mathcal{F}[x]\), minimized over \(x\in\mathcal{A}\). The observation map, discrepancy measure, admissibility class, and regularizer are therefore prerequisites for understanding this formulation. The chapter connects that problem to RSVP field theory and a proposed sheaf-based admissibility condition. Those connections should be studied after the elementary inverse problem, rather than assumed to follow merely from the existence of a minimization objective. A representation can be sufficient for one question and inadequate for another, and regularization can select a reconstruction without establishing that it is the unique true state.

### 4. Read the central obstruction to adequate action early

The current [central-theorem specification](https://github.com/standardgalactic/alphabet/blob/core/central-theorem/SPEC.md) supplies an unusually clear anchor. Let each possible world have a set of admissible actions, and let an observation identify a collection of worlds. A deterministic policy based only on that observation can choose an action adequate for every world in the collection only when their admissible-action sets have a common member. The existence formulation depends on the stated selection assumptions.

For example, the same alarm could mean that restarting is required or that restarting would destroy necessary evidence. If those worlds are observationally indistinguishable and have no common admissible action, there is no universally adequate observation-only decision rule. Better confidence in the same observation cannot manufacture the missing distinction. The system needs additional evidence, a changed action space, an allowed refusal, or a narrower guarantee.

This result should precede grander claims about intelligence. It connects the epistemic and operational sides of the corpus without requiring speculative cosmology. It also clarifies why prediction accuracy, a larger latent space, and a plausible explanation do not individually guarantee appropriate action.

### 5. Put history before state when the task requires it

A current state can hide how a system acquired its resources, permissions, commitments, and liabilities. Two identical balances can represent different obligations. Two identical graphs can encode different authorization histories. Two identical answers can have different evidential standing.

The recommended reading is [Replay and Invariance](https://github.com/standardgalactic/epistemology/blob/main/spherepop/Replay-and-Invariance.tex) alongside a second reading of *States Without Histories*. The crucial distinction is between storing every event and retaining enough history for a stated family of future questions. The corpus often favors event history, but the defensible claim is task-relative historical sufficiency. It is not that every finite-state description is intrinsically defective.

This stage prepares provenance, replay, auditability, historical sufficiency, and the distinction between a process and its terminal image. It is especially important for the later economic and institutional applications.

### 6. Separate reachability, feasibility, and admissibility

Reachability asks what continuations a system can actually produce under its dynamics and available resources. Feasibility adds specified constraints. Admissibility asks which continuations remain acceptable under obligations, authority, safety rules, or other declared criteria. These need not coincide.

The recommended reading is [Reality Is What Can Be Reached](https://github.com/standardgalactic/philosophy/blob/main/reality_reachability.tex), then the continuation and admissibility sections of *Foundations of Distinction Geometry*. Treat “reality is reachability” first as a philosophical proposal and modeling orientation, not as a theorem that makes inaccessible things unreal.

More options are not automatically better. A refusal can remove harmful possibilities while preserving legitimate futures. Conversely, a system can remain operational while losing the capability that justified its operation. This distinction will become central in degradation, institutional participation, and ecological persistence.

### 7. Introduce repair and generative reconstruction

Repair is the maintenance or restoration of capacities under drift, damage, uncertainty, and changing conditions. It can require recovering distinctions, revising a representation, rebuilding an interface, or creating a new route when the old one is unavailable. Recovery is not permission to invent a convenient past.

The recommended reading is [Repair as Fundamental](https://github.com/standardgalactic/alphabet/blob/core/research/repair_as_fundamental.tex), [The Reconstruction Imperative](https://github.com/standardgalactic/philosophy/blob/main/reconstruction_and_distinction.tex), and the generative-compression portions of [Continuations Before Objects](https://github.com/standardgalactic/admissibility-lab/blob/main/continuations_before_objects.tex). Their shared question is what must be retained to regenerate a repertoire, rather than merely archive its products.

The stronger claim that repair is ontologically primitive remains a research position. The more operational claim is already usable: a system’s intelligence and durability should be evaluated partly through its capacity to recover meaningful future action. This is the transition from a worldview of static descriptions to one of sustained competencies.

### 8. Learn Spherepop from the current specification

Spherepop supplies an operational vocabulary for changes that alter future possibilities. Begin with [SPEC.md](https://github.com/standardgalactic/spherepop/blob/main/SPEC.md) and [GLOSSARY.md](https://github.com/standardgalactic/spherepop/blob/main/GLOSSARY.md), rather than reconstructing it from older essays. The current four core operations are Pop, Refuse, Bind, and Collapse. Roughly, they concern commitment or removal of options, inadmissibility, dependency, and observational quotienting. Their exact semantics should come from the specification.

Older texts give Meld a more prominent primitive role. In the current specification it is structural composition rather than a fifth core operation. This is a version difference, not evidence that every occurrence of Spherepop has identical semantics.

The subsequent reading, [Structured Irreversibility](https://github.com/standardgalactic/spherepop/blob/main/Structured%20Irreversibility.tex), develops the categorical bridge to RSVP. Its construction is interesting precisely because it states structures and maps. It should not be expanded into a universal equivalence between the frameworks. The [adequacy experiment](https://github.com/standardgalactic/spherepop/blob/main/experiments/adequacy/README.md) concerns a small translation and sample cases, not by itself a proof of general computational universality.

### 9. Make degradation and verification concrete

The strongest practical continuation framework in the newer corpus is [Admissible Degradation](https://github.com/standardgalactic/admissibility-lab/blob/main/admissible-degradation.tex). It separates the ability to keep running from the preservation of obligations. A component can be sacrificed without invalidating the mission only if the declared requirements remain supported. A dependency structure and survivor sets make that question inspectable.

The requisite concepts are obligation-preserving contraction, witness production, and the distinction between an operational signal and a complete witness. The monograph also distinguishes the scope of a claim from its warrant: an observed episode, tested disturbances, or universal domain is one axis; observation, testing, analysis, or machine checking is another. Those axes should not be collapsed into a ladder of impressive labels.

Then inspect the [degradation experiment](https://github.com/standardgalactic/experiments/blob/main/programming/experiments/admissible-degradation/README.md). Its supplied identities, transformations, verification steps, optional services, and fallback cases demonstrate a model whose obligations were explicitly encoded. They do not independently establish that an arbitrary real system has the same structure.

### 10. Move from single systems to scales, boundaries, and local compatibility

Only now introduce the machinery for reconciling local descriptions. Constraint geometry studies how feasible continuations change across boundaries and scales. TARTAN concerns multiscale tiling with trajectory-aware annotations. Yarncrawler-related work explores reconstruction and repair across distributed material and informational settings. Sheaves provide one mathematical language for asking when compatible local data assemble into a global description.

The recommended reading is [Field Space](https://github.com/standardgalactic/alphabet/blob/core/constraint-geometry/field-space.tex), then the [TARTAN overview](https://github.com/standardgalactic/library/blob/main/physics/tartan-framework-overview.txt). The overview is an archived explanatory text, so treat it as an introduction rather than the last word on an implementation. Read [Error as Obstruction](https://github.com/standardgalactic/research-projects/blob/main/paper/error_as_obstruction.tex) only after learning the requisite local-to-global mathematics.

Ordinary disagreement, reconstruction failure, and nonzero cohomology are not interchangeable. To identify an error with a cohomological obstruction, specify the base space, local data, restriction maps, coefficients, and relevant obstruction result. This discipline protects a promising mathematical direction from becoming a metaphor that appears to prove everything.

### 11. Study memory, cognition, and semantic navigation

This branch asks how systems use compressed experience to recover context-appropriate action. Ecphory provides a vocabulary for cue-dependent recovery. Generative compression asks whether a compact generator can preserve a useful repertoire. Aspect Relegation Theory proposes that explicit deliberative machinery can become background infrastructure and return to attention when conditions demand it. Semantic navigation and Syntactitude examine organized trajectories through meaning rather than treating syntax or a final answer as the entire cognitive event.

The recommended reading is [Access Before Storage](https://github.com/standardgalactic/laboratory/blob/main/continuation-geometry/access-before-storage.tex), [The Myth of Dual Cognition](https://github.com/standardgalactic/library/blob/main/the-myth-of-dual-cognition.tex), and [Syntactitude](https://github.com/standardgalactic/alphabet/blob/core/syntactitude/syntactitude.tex). Then inspect the [aspect-relegation results](https://github.com/standardgalactic/experiments/blob/main/programming/experiments/aspect-relegation/RESULTS.md).

The experiment distinguishes relegation from deletion and reinstatement from relearning within its model. That is useful. It does not establish a complete psychological account of automatic cognition. Similarly, semantic-relaxation networks and active-geodesic proposals are research models of inference, not demonstrated accounts of every mind.

The cognitive formulation of CLIO warrants a separate primary reading: [*CLIO: A Unified Architecture of Feeling, Cognition, and Coherence: Solmsian Affective Neuroscience, RSVP Field Theory, and Recursive Inference*](https://github.com/standardgalactic/library/blob/7749fb64913708b1380652f91ae2fdc13321de04/vault/draft-01.tex), a manuscript bearing Flyxion’s authorship and the date 2025. Its preface expands CLIO as *Coherent Layered Inference Optimization*. This is a substantive authored account, although later chapters contain sketches and figure placeholders, so it should be identified as a draft rather than a completed empirical validation.

The manuscript organizes cognition into four interacting levels: affective steering, local prediction, structural models and maps, and metacognition and strategy. Its computational treatment updates a latent state at each level through a gradient of a free-energy-like objective, with an effective learning rate modulated by affect and precision. The pedagogical prerequisites are homeostasis and feedback control, prediction error, hierarchical generative models, and uncertainty weighting. Parts I and III provide the conceptual architecture, followed by Part IV’s update equations. Part II’s RSVP and derived-geometric interpretation is a more specialized bridge; its position in the manuscript need not determine the introductory reading order.

This formulation materially broadens CLIO’s role in the roadmap. CLIO is not solely an account of information lost under projection; it is also a proposed architecture of recursive, affect-modulated inference and self-correction. Part VI extends that architecture to coupled agents and intersubjectivity. The neuroanatomical assignments, proposed consciousness criterion, Fisher-metric interpretation, and claims about artificial intelligence remain distinct hypotheses requiring their respective mathematical or empirical warrants. Ordinary hierarchical feedback does not alone prove phenomenal consciousness.

The two retrieved primary formulations should remain explicitly differentiated. The 2025 cognitive manuscript uses *Coherent Layered Inference Optimization*, whereas the reconstruction chapter uses *Constraint-Leveraged Inference and Optimisation*. Their overlap concerns constrained inference and correction, but the differing expansions and structures should not be silently standardized. The reconstruction formulation enters at Stage 3; the cognitive architecture enters at Stage 11; the proposed RSVP coupling belongs at Stages 12 and 13.

Embodiment belongs here rather than as an afterthought. [Morphology as Computation](https://github.com/standardgalactic/epistemology/blob/main/morphology-as-computation.tex) explicitly distinguishes rigorous, structural, phenomenological, and conjectural claims. That status vocabulary is a useful model for the broader corpus.

### 12. Introduce RSVP as a modeling language

RSVP organizes a system using scalar, vector, and entropy-related fields. In a physical model these fields require physical definitions, dimensions, equations, boundary conditions, and empirical consequences. In a semantic, economic, or computational model they can represent distributed resources or constraints, directed flows or transformations, and uncertainty or loss of distinctions. Those latter uses do not require the fields to be literal microscopic substances.

Begin with the [conceptual primer](https://github.com/standardgalactic/research-projects/blob/main/conceptual-primer.md), then revisit the RSVP chapters of *Foundations of Distinction Geometry*. [Hidden Manifolds](https://github.com/standardgalactic/alphabet/blob/core/manuscripts/hidden_manifolds.tex) gives an application-oriented route through transport and inverse reconstruction. Define what each field measures in the application before importing claims from physics.

Shannon entropy, thermodynamic entropy, semantic ambiguity, organizational disorder, and computational branching are distinct quantities. A mapping between them may be proposed, but a shared symbol does not supply a dimensional or empirical identity. RSVP becomes more useful when its applications state their field definitions locally instead of relying on a universal verbal interpretation.

### 13. Assemble intelligence and coordination through HYDRA

HYDRA brings relevance, personalized graphs, features, tiling, memory, and gating into an architecture. The newer [architecture manuscript](https://github.com/standardgalactic/hydra/blob/main/hydra_architecture.tex) distinguishes engineering, geometric interpretation, and a structural-universality conjecture. That sequence is better than presenting universality as an established consequence of assembling modules.

The recommended reading is it after the memory, projection, and multiscale stages. Read [Active Geodesic Inference](https://github.com/standardgalactic/spherepop/blob/main/Active%20Geodesic%20Inference.tex) as a related proposal about trajectories through constrained semantic spaces. The general term AGI and the specific title Active Geodesic Inference should be disambiguated when introducing the work.

Collective coordination requires more than intersecting preferences. Shared action depends on interfaces, authority, commitments, incompatible requirements, and procedures for resolving them. Claims about colimits, universal architectures, or translations between different agents need explicit categories and maps. The fruitful near-term question is narrower: which module combinations measurably improve reconstruction, calibration, warranted action, or recovery under a stated disturbance family?

### 14. Return to Adversaria for public reasoning and institutions

The introductory evidence discipline now becomes an institutional architecture. [Routing Is Not Adjudication](https://github.com/standardgalactic/adversaria/blob/main/02-routing-is-not-adjudication.tex) distinguishes what a user sees from the standing of a claim in the relevant argument structure. [No Scalar, No Problem](https://github.com/standardgalactic/adversaria/blob/main/08-no-scalar-no-problem.tex) explains why multiple evaluative coordinates need not admit a faithful single ranking. [Mapping Two Ontologies](https://github.com/standardgalactic/adversaria/blob/main/13-mapping-two-ontologies.tex) treats a bridge between conceptual systems as a defeasible, scoped claim.

This is one of the best places to make the worldview self-correcting. The roadmap’s own synthesis should be handled in the same way: connections have scopes and objections, terminology does not establish identity, and a compelling narrative cannot replace missing warrants.

The recommended reading is [The Warrant Question](https://github.com/standardgalactic/laboratory/blob/main/continuation-geometry/the-warrant-question.tex) for the passage from private conviction to consequential public justification. Admissibility governs evaluability and authorized action in specified models. It should not be inflated into the assertion that something cannot be true until an institution authorizes it.

### 15. Apply the framework to economics, infrastructure, and ecology

The economic branch is about how participation, identity, dependency, and resource flows preserve or restrict future agency. Read [Participation Without Guarantee](https://standardgalactic.github.io/antivenom/economics/participation_without_guarantee.pdf) through the history and admissibility stages. Its analysis of participation and identity exposure does not depend on proving a continuous physical plenum. Quantitative information-theoretic or cohomological claims require their own derivations and should be audited separately from the institutional argument.

The recommended reading is [Constraint Before Optimization](https://github.com/standardgalactic/library/blob/main/constraint-before-optimization.tex) next. Optimization presupposes a feasible domain and a choice of objective; infrastructure and institutional identity constrain both. Reputation and identity are not literal conserved physical quantities simply because a model uses conservation language.

For ecology, [Proxy Permanence Failure](https://github.com/standardgalactic/antivenom/blob/main/persistence/proxy_permanence_failure.tex) examines a failure mode in which the persistence of a proxy ceases to track the target under changing conditions. Its transferable lesson concerns nonstationarity and maintained validation. The ecological and political conclusions still require evidence specific to their settings.

SFIP, Ontological Polycompilation, Playcosm, and the Xylomorphic Premise belong to nearby branches. Respectively, they investigate structured interfaces and agency, multiple interpretations or constructions across substrates, play and openness of futures, and coupled material computation. Their shared motifs are informative, but they are not prerequisites for the entire corpus. The [Antivenom source guide](https://github.com/standardgalactic/antivenom/blob/main/framework/source-guide.txt) is a locator for these branches, not a substitute for their primary texts.

### 16. Take the physical and cosmological branch separately

Physical RSVP asks substantially more than the modeling applications. It needs a specified physical ontology, observables, dimensions, conservation laws, dynamics, and recoverable limiting cases. Begin with the [cosmology dependency ledger](https://github.com/standardgalactic/cosmology/blob/main/chapter-72-dependency-ledger.md), then selected parts of [The Smoothness Paradox](https://github.com/standardgalactic/cosmology/blob/main/smoothness-paradox.tex). The ledger is especially useful because it separates instability, accessibility, nonlinear persistence, and closure questions.

The [experiment plan](https://github.com/standardgalactic/cosmology/blob/main/experiments/python/README.md) describes positive and negative controls and refinement checks. These are plans and reported artifacts to inspect, not tests rerun by this survey. A generic unstable simulation does not establish a stable physical structure or the full cosmological theory.

The physical worldview remains conditional at this stage. Persistence hypotheses, closure, observational matching, and connections to established gravitational dynamics are research obligations. Their incompleteness does not invalidate a well-defined economic use of fields, but neither does an effective economic metaphor validate the cosmology.

### 17. Add quantum interfaces only with their extra structure

Unistochastic matrices have entries of the form \(P_{ij}=|U_{ij}|^2\) for a unitary matrix \(U\). They are a constrained class of stochastic matrices, rather than arbitrary continuous probabilities. Probabilities alone do not specify the phase, composition, interference, or dynamical structure of quantum mechanics.

The recommended reading is the externally rooted material in [Unistochastic Quantum Theory](https://github.com/standardgalactic/library/blob/main/unistochastic-quantum-theory.txt) as an archived introduction, then the proposed [Admissibility Interface](https://github.com/standardgalactic/cosmology/blob/main/working/admissibility-interface.tex) and [Where Fields Meet](https://github.com/standardgalactic/cosmology/blob/main/where-fields-meet.tex). The latter distinguishes gauge invariance from preservation of admissible continuations and states additional boundary and coupling commitments.

The curriculum must distinguish standard quantum formalism, an external stochastic interpretation, and the proposed RSVP interface construction. None should be summarized as “continuous probability resolves quantum mechanics and relativity.” This is an advanced research bridge whose assumptions and recoverable predictions need separate examination.

### 18. Use creative systems and world engines as parallel laboratories

Drawing, gesture, music, spatial reading, semantic infrastructure, and persistent world engines explore the same questions through production and interaction. They can often be approached much earlier than the technical physics branch.

The recommended reading is [Making Thought Visible](https://github.com/standardgalactic/drawing/blob/main/making_thought_visible.tex), [Gesture Before Symbol](https://github.com/standardgalactic/research-projects/blob/main/Aurora/gesture-before-symbol.tex), and [Cutaway Reader](https://github.com/standardgalactic/cutaway-reader/blob/main/README.md). A finished image or symbol can hide the policy, sequence, and embodied capacities that generated it. Spatial interfaces can expose provenance and inferred connections differently from a linear document.

The persistent-world direction in [the unified-theory sketch](https://github.com/standardgalactic/research-projects/blob/main/unified-theory.md) adds writeback and maintained state to generation. These are design investigations, not empirical confirmation of a physical ontology. Also distinguish projects from manuscripts: the surveyed `SemanticInfrastructure/paper.tex` is a stub, so the project name should not be presented as a completed formal theory.

## Where the major frameworks fit

| Framework or family | Main question | Best point of entry | Present caution |
|---|---|---|---|
| Distinction geometry | Which differences survive observation and reconstruction? | Stages 2–4 | Proposed metric choices need assumptions; interface equality is not universal equivalence. |
| CLIO | How can constrained reconstruction and layered, affect-modulated inference support correction and coherence? | Stage 3 for reconstruction; Stage 11 for cognition | Two primary formulations use different expansions; their physical and consciousness bridges require separate warrants. |
| Reachability ontology | Which futures can a system support? | Stage 6 | Philosophical orientation is stronger than an ordinary reachability model. |
| CPR | How do constraint, projection, and reachability interact? | Stages 3–6 | A useful conceptual scaffold, not proof that every branch is equivalent. |
| Repair theory | What restores capacities under drift and damage? | Stage 7 | Operational repair and ontological primacy are different claims. |
| Spherepop | How do consequential operations change future options and histories? | Stage 8 | Current specification supersedes some older vocabulary. |
| Admissible degradation | What may be sacrificed while obligations survive? | Stage 9 | Witness completeness and claim scope must be explicit. |
| Constraint geometry | How do boundaries structure permissible evolution? | Stage 10 | Define the relevant geometry rather than infer it from terminology. |
| TARTAN | How can multiscale organization retain trajectory information? | Stage 10 | Separate explanatory sketches from implementations and measured results. |
| Yarncrawler and sheaf reconstruction | When can distributed local material be repaired or assembled? | Stage 10 | Cohomological identifications require actual constructions. |
| Ecphory and generative compression | How can cues or compact generators recover a repertoire? | Stage 11 | Recovery guarantees depend on the repertoire and query family. |
| Aspect Relegation Theory | How does explicit control become background infrastructure and return? | Stage 11 | Model demonstrations do not establish a general psychology. |
| Syntactitude and semantic navigation | How is meaning organized through trajectories and contexts? | Stage 11 | Cognitive and semantic hypotheses remain separately testable. |
| RSVP | How can distributed structure, flow, and uncertainty be modeled together? | Stage 12 | Application fields need local definitions; physics requires additional commitments. |
| HYDRA | How can relevance, graphs, tiling, memory, and gating be assembled? | Stage 13 | Structural universality is explicitly conjectural. |
| Active Geodesic Inference | How might inference follow constrained semantic trajectories? | Stage 13 | Geometric interpretation is not yet universal cognitive validation. |
| Adversaria | How should scoped claims, attacks, evidence, and standing be maintained? | Stages 1 and 14 | Presentation and adjudication must remain distinct. |
| SFIP and semantic interfaces | How can interface structure preserve agency? | Stage 15 or creative branch | Locate primary specifications before treating summaries as canonical. |
| Ontological Polycompilation | How can different symbolic constructions share or reinterpret substrates? | Stage 15 | Multiple interpretations do not establish physical equivalence. |
| Playcosm | How do play and exploration preserve openness? | Stage 15 or creative branch | A design or philosophical branch, not a universal prerequisite. |
| Xylomorphic Premise | How might material flows and computation be coupled? | Stage 15 | Engineering proposal does not imply consciousness or validated scalability. |
| RSVP cosmology and closure | Can the physical dynamics support the proposed structures and observations? | Stage 16 | Closure, persistence, and empirical matching remain substantive obligations. |
| Quantum interface constructions | Under which added structures can quantum observables emerge? | Stage 17 | Stochasticity alone is insufficient. |
| World engines, Aurora, drawing, spatial readers | How can interfaces retain histories and generative capacities? | Parallel to stages 3–11 | Demonstrations are laboratories, not proof of the whole ontology. |

## The mathematics to learn, in order

| Mathematical preparation | What it unlocks | Necessary caution |
|---|---|---|
| Logic, sets, functions, relations, and quantifiers | Scope, observations, admissible-action sets, central obstruction | A formal result proves what its premises state. |
| Basic probability and information theory | Entropy, conditional information, projection and sufficiency | Information-theoretic loss is not automatically physical dissipation. |
| Graphs, partial orders, and transition systems | Dependencies, histories, survivor sets, refusal and reachability | A ranking can conceal incomparable requirements. |
| Algorithms, operational semantics, and verification | Replay, Spherepop, witnesses, implementation adequacy | Successful examples are narrower than a general correctness theorem. |
| Linear algebra, calculus, and dynamical systems | Field models, stability, trajectories, semantic relaxation | Stability, accessibility, and persistence are distinct properties. |
| Optimization and transport | Hidden costs, flows, constraint geometry, inverse problems | Identifiability needs assumptions; an optimizer is not a causal explanation. |
| Topology and elementary category theory | Quotients, compositional bridges, local and global structure | Define objects and arrows before claiming a functor. |
| Sheaves and cohomology | Local compatibility and obstruction constructions | Generic disagreement is not automatically a cohomology class. |
| Statistical mechanics, PDEs, relativity, and field theory | Physical RSVP and cosmology | Every physical field needs operational meaning and units. |
| Quantum mechanics, unitary dynamics, and gauge theory | Unistochastic interfaces and dressing constructions | Added phase and dynamical structures cannot be omitted. |
| Derived geometry, BV/AKSZ, and advanced homological methods | The most technical proposed formalizations | These are specialist extensions, not prerequisites for economic analysis. |

Category theory, sheaf cohomology, and field theory should not be front-loaded into an introductory explanation. They become useful when a concrete earlier question makes their machinery necessary. Conversely, a theorem using them cannot be assessed solely through an intuitive summary.

## Reading paths for different purposes

For a general worldview, read stages 1 through 7, a concrete Spherepop or degradation example, and the institutional applications. Return to RSVP afterward as one systematic mathematical vocabulary. This route establishes the shared questions without requiring agreement with speculative physics.

For economics and public institutions, prioritize projection, history, admissibility, degradation, and Adversaria. Read *Participation Without Guarantee*, *Constraint Before Optimization*, and the proxy-persistence work next. The quantum and cosmological branches are optional context.

For artificial intelligence, take the central obstruction seriously before memory and architecture. Follow reconstruction, generative compression, aspect relegation, embodied computation, TARTAN, and HYDRA. Evaluate the architecture through recoverable competencies and warranted decisions under declared disturbances, rather than calling it general intelligence because it uses a broad vocabulary.

For software, begin with Spherepop’s normative specification, replay, and the central-theorem registry. Then study dependency orders, obligation-preserving contraction, witnesses, and Adversaria’s separation of routing from standing. Introduce field models only when they improve a defined task.

For physical cosmology, learn the conceptual spine and the specialist mathematics, then read the dependency ledger before the long manuscripts. Treat the instability, accessibility, persistence, quantum-interface, and observational gates as separate questions. This route needs the most independent scientific validation.

For art and interfaces, begin with projection and generative reconstruction, then drawing, gesture, spatial navigation, and persistent world engines. These projects can make the abstract questions intelligible without becoming illustrations of an already proven universal theory.

## What would make the corpus substantially more rigorous

The most valuable editorial addition would be a shared model charter. Each framework should state its carrier or histories, observation map, allowed operations, obligations, resource assumptions, recovery or query family, witnesses, and claim scope. It should then identify whether its conclusions are definitions, mathematical theorems, empirical results, design rules, analogies, or conjectures. This would make comparisons possible without imposing a single substrate on every project.

The second priority is a bridge register. Each proposed connection should name the source and target structures, assumptions, preserved properties, counterexamples, and proof or implementation status. The Spherepop–RSVP construction, CLIO–repair connection, sheaf obstruction claims, HYDRA universality proposal, and quantum-interface program are good early entries. Adversaria already offers a way of treating those bridges as scoped claims rather than permanent declarations.

The third priority is a versioned glossary. Spherepop’s current vocabulary shows why this matters. CLIO, entropy, collapse, reconstruction, admissibility, continuation, and AGI need local meanings or explicit canonical definitions. An old manuscript should remain available as history while clearly identifying which specification now governs its interpretation.

The fourth priority is evidence attached to exact claims. A proof needs named premises and a checkable artifact; a simulation needs controls and parameter scope; a performance result needs its device, workload, baseline, and released evidence; a psychological or economic claim needs evidence about the target population. The corpus’s own evidence and witness frameworks already explain this requirement well.

The fifth priority is a genuinely introductory synthesis. The existing [Distinction and Continuation dependency ledger](https://github.com/standardgalactic/laboratory/blob/main/processing/distinction-and-continuation/dependency-ledger.md) provides a promising staged outline, but its surrounding scaffold should not be presented as a completed monograph. A short, finished course following stages 1 through 9 would do more for coherence than another universal manuscript.

## A defensible statement of the worldview

Systems can be understood through the distinctions they maintain, the histories that constrain them, the continuations they can support, and the means by which they repair and revise themselves. Observations compress those systems, so good action requires knowing what the compression hides. Intelligence concerns recoverable and warranted competence, not only prediction or stored representation. Institutions and infrastructures should be assessed by the legitimate futures they preserve, the obligations they discharge, and their capacity for accountable correction.

RSVP, Spherepop, CLIO, repair theory, admissible degradation, and Adversaria offer different languages for investigating these questions. They share an orientation without requiring identical primitives. The proposed physical and cosmological extensions ask whether that orientation can be realized in a fundamental dynamical account. Their success remains a scientific question rather than a premise of every other application.

That is the coherent center supported by this survey. It is a research worldview with an operational core, several mathematical formulations, and explicit open bridges. Its credibility grows when each bridge carries its own assumptions and warrant.

## Source inventory

The following files were retrieved during the survey. Inclusion records retrieval, not endorsement or full proof review. The unrelated `clio` repository is excluded from the primary reading list. Links point to current branches and can change after the survey.

| Repository | Retrieved source |
|---|---|
| admissibility-lab | [README.md](https://github.com/standardgalactic/admissibility-lab/blob/main/README.md) |
| admissibility-lab | [admissible-degradation.tex](https://github.com/standardgalactic/admissibility-lab/blob/main/admissible-degradation.tex) |
| admissibility-lab | [continuations_before_objects.tex](https://github.com/standardgalactic/admissibility-lab/blob/main/continuations_before_objects.tex) |
| admissibility-lab | [processing/chapters/ch01.tex](https://github.com/standardgalactic/admissibility-lab/blob/main/processing/chapters/ch01.tex) |
| admissibility-lab | [processing/chapters/ch02.tex](https://github.com/standardgalactic/admissibility-lab/blob/main/processing/chapters/ch02.tex) |
| admissibility-lab | [processing/chapters/structure-note.tex](https://github.com/standardgalactic/admissibility-lab/blob/main/processing/chapters/structure-note.tex) |
| admissibility-lab | [processing/intelligence-as-perspectival-convergence.tex](https://github.com/standardgalactic/admissibility-lab/blob/main/processing/intelligence-as-perspectival-convergence.tex) |
| adversaria | [02-routing-is-not-adjudication.tex](https://github.com/standardgalactic/adversaria/blob/main/02-routing-is-not-adjudication.tex) |
| adversaria | [08-no-scalar-no-problem.tex](https://github.com/standardgalactic/adversaria/blob/main/08-no-scalar-no-problem.tex) |
| adversaria | [13-mapping-two-ontologies.tex](https://github.com/standardgalactic/adversaria/blob/main/13-mapping-two-ontologies.tex) |
| adversaria | [monograph/ch01.tex](https://github.com/standardgalactic/adversaria/blob/main/monograph/ch01.tex) |
| adversaria | [monograph/ch04a.tex](https://github.com/standardgalactic/adversaria/blob/main/monograph/ch04a.tex) |
| adversaria | [monograph/ch04b.tex](https://github.com/standardgalactic/adversaria/blob/main/monograph/ch04b.tex) |
| adversaria | [monograph/ch07a.tex](https://github.com/standardgalactic/adversaria/blob/main/monograph/ch07a.tex) |
| adversaria | [monograph/preface.tex](https://github.com/standardgalactic/adversaria/blob/main/monograph/preface.tex) |
| alphabet | [RELATED_REPOSITORIES.md](https://github.com/standardgalactic/alphabet/blob/core/RELATED_REPOSITORIES.md) |
| alphabet | [central-theorem/SPEC.md](https://github.com/standardgalactic/alphabet/blob/core/central-theorem/SPEC.md) |
| alphabet | [constraint-geometry/field-space.tex](https://github.com/standardgalactic/alphabet/blob/core/constraint-geometry/field-space.tex) |
| alphabet | [framework/README.md](https://github.com/standardgalactic/alphabet/blob/core/framework/README.md) |
| alphabet | [framework/thematic-synthesis.md](https://github.com/standardgalactic/alphabet/blob/core/framework/thematic-synthesis.md) |
| alphabet | [manuscripts/hidden_manifolds.tex](https://github.com/standardgalactic/alphabet/blob/core/manuscripts/hidden_manifolds.tex) |
| alphabet | [research/repair_as_fundamental.tex](https://github.com/standardgalactic/alphabet/blob/core/research/repair_as_fundamental.tex) |
| alphabet | [roadmap/README.md](https://github.com/standardgalactic/alphabet/blob/core/roadmap/README.md) |
| alphabet | [roadmap/flyxion_briefing.tex](https://github.com/standardgalactic/alphabet/blob/core/roadmap/flyxion_briefing.tex) |
| alphabet | [roadmap/representation-without-faithfulness.tex](https://github.com/standardgalactic/alphabet/blob/core/roadmap/representation-without-faithfulness.tex) |
| alphabet | [roadmap/states_without_histories.tex](https://github.com/standardgalactic/alphabet/blob/core/roadmap/states_without_histories.tex) |
| alphabet | [syntactitude/syntactitude.tex](https://github.com/standardgalactic/alphabet/blob/core/syntactitude/syntactitude.tex) |
| antivenom | [antivenom-recurring-themes.md](https://github.com/standardgalactic/antivenom/blob/main/antivenom-recurring-themes.md) |
| antivenom | [framework/source-guide.txt](https://github.com/standardgalactic/antivenom/blob/main/framework/source-guide.txt) |
| antivenom | [futurology/xylomorphic-premise.tex](https://github.com/standardgalactic/antivenom/blob/main/futurology/xylomorphic-premise.tex) |
| antivenom | [persistence/proxy_permanence_failure.tex](https://github.com/standardgalactic/antivenom/blob/main/persistence/proxy_permanence_failure.tex) |
| cosmology | [chapter-72-dependency-ledger.md](https://github.com/standardgalactic/cosmology/blob/main/chapter-72-dependency-ledger.md) |
| cosmology | [experiments/python/README.md](https://github.com/standardgalactic/cosmology/blob/main/experiments/python/README.md) |
| cosmology | [smoothness-paradox.tex](https://github.com/standardgalactic/cosmology/blob/main/smoothness-paradox.tex) |
| cosmology | [where-fields-meet.tex](https://github.com/standardgalactic/cosmology/blob/main/where-fields-meet.tex) |
| cosmology | [working/admissibility-interface.tex](https://github.com/standardgalactic/cosmology/blob/main/working/admissibility-interface.tex) |
| cosmology | [working/distinction-geometry-core.tex](https://github.com/standardgalactic/cosmology/blob/main/working/distinction-geometry-core.tex) |
| cosmology | [working/flyxion-frameworks.tex](https://github.com/standardgalactic/cosmology/blob/main/working/flyxion-frameworks.tex) |
| cutaway-reader | [README.md](https://github.com/standardgalactic/cutaway-reader/blob/main/README.md) |
| drawing | [README.md](https://github.com/standardgalactic/drawing/blob/main/README.md) |
| drawing | [making_thought_visible.tex](https://github.com/standardgalactic/drawing/blob/main/making_thought_visible.tex) |
| epistemology | [morphology-as-computation.tex](https://github.com/standardgalactic/epistemology/blob/main/morphology-as-computation.tex) |
| epistemology | [spherepop/Replay-and-Invariance.tex](https://github.com/standardgalactic/epistemology/blob/main/spherepop/Replay-and-Invariance.tex) |
| experiments | [programming/experiments/admissible-degradation/README.md](https://github.com/standardgalactic/experiments/blob/main/programming/experiments/admissible-degradation/README.md) |
| experiments | [programming/experiments/aspect-relegation/README.md](https://github.com/standardgalactic/experiments/blob/main/programming/experiments/aspect-relegation/README.md) |
| experiments | [programming/experiments/aspect-relegation/RESULTS.md](https://github.com/standardgalactic/experiments/blob/main/programming/experiments/aspect-relegation/RESULTS.md) |
| hydra | [README.md](https://github.com/standardgalactic/hydra/blob/main/README.md) |
| hydra | [hydra.tex](https://github.com/standardgalactic/hydra/blob/main/hydra.tex) |
| hydra | [hydra_architecture.tex](https://github.com/standardgalactic/hydra/blob/main/hydra_architecture.tex) |
| intelligence | [semantic-relaxation-networks.tex](https://github.com/standardgalactic/intelligence/blob/main/semantic-relaxation-networks.tex) |
| laboratory | [continuation-geometry/README.md](https://github.com/standardgalactic/laboratory/blob/main/continuation-geometry/README.md) |
| laboratory | [continuation-geometry/access-before-storage.tex](https://github.com/standardgalactic/laboratory/blob/main/continuation-geometry/access-before-storage.tex) |
| laboratory | [continuation-geometry/the-warrant-question.tex](https://github.com/standardgalactic/laboratory/blob/main/continuation-geometry/the-warrant-question.tex) |
| laboratory | [processing/distinction-and-continuation/README.md](https://github.com/standardgalactic/laboratory/blob/main/processing/distinction-and-continuation/README.md) |
| laboratory | [processing/distinction-and-continuation/dependency-ledger.md](https://github.com/standardgalactic/laboratory/blob/main/processing/distinction-and-continuation/dependency-ledger.md) |
| library | [aspect-relegation-theory.txt](https://github.com/standardgalactic/library/blob/main/aspect-relegation-theory.txt) |
| library | [constraint-before-optimization.tex](https://github.com/standardgalactic/library/blob/main/constraint-before-optimization.tex) |
| library | [physics/tartan-framework-overview.txt](https://github.com/standardgalactic/library/blob/main/physics/tartan-framework-overview.txt) |
| library | [protocols/event-historical-frameworks-briefing.md](https://github.com/standardgalactic/library/blob/main/protocols/event-historical-frameworks-briefing.md) |
| library | [the-myth-of-dual-cognition.tex](https://github.com/standardgalactic/library/blob/main/the-myth-of-dual-cognition.tex) |
| library | [unistochastic-quantum-theory.txt](https://github.com/standardgalactic/library/blob/main/unistochastic-quantum-theory.txt) |
| library | [workspace/admissibility-before-truth.tex](https://github.com/standardgalactic/library/blob/main/workspace/admissibility-before-truth.tex) |
| philosophy | [README.md](https://github.com/standardgalactic/philosophy/blob/main/README.md) |
| philosophy | [reality_reachability.tex](https://github.com/standardgalactic/philosophy/blob/main/reality_reachability.tex) |
| philosophy | [reconstruction_and_distinction.tex](https://github.com/standardgalactic/philosophy/blob/main/reconstruction_and_distinction.tex) |
| research-projects | [Aurora/gesture-before-symbol.tex](https://github.com/standardgalactic/research-projects/blob/main/Aurora/gesture-before-symbol.tex) |
| research-projects | [SemanticInfrastructure/paper.tex](https://github.com/standardgalactic/research-projects/blob/main/SemanticInfrastructure/paper.tex) |
| research-projects | [conceptual-primer.md](https://github.com/standardgalactic/research-projects/blob/main/conceptual-primer.md) |
| research-projects | [framework/RESEARCH_PROGRAM.md](https://github.com/standardgalactic/research-projects/blob/main/framework/RESEARCH_PROGRAM.md) |
| research-projects | [paper/error_as_obstruction.tex](https://github.com/standardgalactic/research-projects/blob/main/paper/error_as_obstruction.tex) |
| research-projects | [unified-theory.md](https://github.com/standardgalactic/research-projects/blob/main/unified-theory.md) |
| rsvp-lab | [trajectory_inference.tex](https://github.com/standardgalactic/rsvp-lab/blob/main/trajectory_inference.tex) |
| spherepop | [Active Geodesic Inference.tex](https://github.com/standardgalactic/spherepop/blob/main/Active%20Geodesic%20Inference.tex) |
| spherepop | [GLOSSARY.md](https://github.com/standardgalactic/spherepop/blob/main/GLOSSARY.md) |
| spherepop | [SPEC.md](https://github.com/standardgalactic/spherepop/blob/main/SPEC.md) |
| spherepop | [Structured Irreversibility.tex](https://github.com/standardgalactic/spherepop/blob/main/Structured%20Irreversibility.tex) |
| spherepop | [experiments/adequacy/README.md](https://github.com/standardgalactic/spherepop/blob/main/experiments/adequacy/README.md) |
| textbook | [README.md](https://github.com/standardgalactic/textbook/blob/main/README.md) |
| textbook | [The_Ecology_of_Distinctions.tex](https://github.com/standardgalactic/textbook/blob/main/The_Ecology_of_Distinctions.tex) |

Earlier context also included the June project map and briefing, repository introductions, targeted Alphabet directory inventories, the economics essay, and the collaborative MEM8 blueprint. These play different evidential roles from the primary specifications.

Additional primary CLIO sources retrieved for this revision:

| Repository | Authored source |
|---|---|
| alphabet | [CLIO: Constraint-Leveraged Inference and Optimisation, Chapter 27](https://github.com/standardgalactic/alphabet/blob/6f7739b314f66b434c32e98b35d6545018e3ce26/cosmology/part5/ch27-clio-reconstruction.tex) |
| library | [CLIO: A Unified Architecture of Feeling, Cognition, and Coherence](https://github.com/standardgalactic/library/blob/7749fb64913708b1380652f91ae2fdc13321de04/vault/draft-01.tex) |

