# Security

##  Smart Contract Audit

### What is a Smart Contract Audit?

A smart contract audit is a timeboxed, security based code review of a smart contract system.

An auditor's goal is to find as many security vulnerabilities as possible and educate the protocol on best practices moving forward in development. Auditors leverage a variety of tools and expertise to find these vulnerabilities.

Why is a security audit so important?

Well, the statistics I mentioned in the introduction speak for themselves. With billions of dollars being stolen from unaudited code, the industry can't afford not to improve their security.

The immutability of the blockchain renders patching and updating frequently impossible, impractical or expensive. So having confidence in the security of your code is key.

An audit can actually accomplish much more than just checking for bugs. An audit can:

 **Improve your developer team's understanding of code**

 **Improve developer speed and efficiency**

 **Teach the latest tooling**

Often a single audit isn't even enough and protocols embark on a security journey including a number of steps like

**formal verification**

**competitive audits**

**Bug Bounty Programs**

**Private Audits**

**Mitigation Reviews**

...and more.

Securing your code is an on going journey and just as your protocol evolves over time, so will your security needs.

Additionally, working with multiple auditors and having multiple eyes on your code can uncover even more vulnerabilities than a single review. This is one of the biggest advantages of a competitive audit platform like CodeHawks.

If two heads are better than one, what are dozens or hundreds of heads capable of?

Keys To a Successful Audit
There are a few things you as a developer can do to prepare for an audit to ensure things are successful and smooth.

**Have clear Documentation**

**Robust test suite, ideally including fuzz tests**

**Code should be commented and readable**

**Modern best practices followed**

**Established communication channel between developer and auditors**

**Do an initial video walkthrough of the code**

I'll stress point 5 for a moment. The developers of a protocol are always going to have more context of a code base than an auditor will, having clear and efficient communication is important for allowing clear understanding of expected functionality and the ability to verify desired behaviour.

This clear understanding of what should happen is paramount. 80% of vulnerabilities found aren't broken code, but business logic.

### What an audit isn't

An audit is not a guarantee that your code is bug free.

Security is a continuous process that is always evolving with new vulnerabilities popping up each day. When/if an exploit hits your protocol, make sure you and your auditor have that line of communication to discuss the situation quickly.

## Security Tooling

Being aware of the tools available in this space will even give you as developers the opportunity to employ them during development. Security isn't something you can just tack onto the end of a development cycle as is best approached as a foundational consideration from the very start of development.

### The Audit Process

There's no silver bullet and each individual audit may be slightly different from the last, but here's a general outline of the process a protocol will undergo when under audit.

**Manual Review**

    Go through the Code & Docs

    Understand what the protocol should do

**Using Tools**

Manual Review is arguably the most important aspect of an audit. Reading the documentation and gaining context of the protocol and how it should behave. Taking the time to properly gain context can save a tonne of confusion later. Remember, most bugs are business logic related, meaning it isn't actually an error in the code that causes a problem, but some inaccurate implementation of what should happen.

## Tools

Let's talk about some of the tools security professionals and developers have in their toolbox.

**Test Suites:** This is the first line of defense and why we placed such an emphasis on them throughout the course. All of the most popular development frameworks include test suites, use them, use them often, catch those bugs.

**Static Analysis:** Static analysis is the process of checking code for issues without executing anything. Popular entries here include Aderyn, Slither and Mithril

**Fuzz Testing:** a specific test suite methodology involving providing random data as inputs during testing.

Two variations exist including stateless and stateful fuzz testing. Stateless fuzz tests abandon the result of a previous test before running a new test, with a new contract state. Stateful, conversely will remember the ending state of one run and use this as the starting start for the next fuzz run.

Differential Testing: We don't cover this in depth, but the idea is to write code in multiple ways and compare the results to each other to ensure validity.

**Formal Verification:** Formal Verification is a generic term for applying formal methods to verify the correctness of a system.

Applying formal methods pertains to anything based on mathematical proofs, these are mathematical expressions that solve for the soundsness and validity of a system, a proof of correctness, or whether or not a bug must exist. ie Symbolic Execution.

Examples of Formal Verification tools include Manticore, Halmos, Certora and even the Solidity Compiler.

There's a great article hosted by hackmd that compares many of these tools and how they work, I encourage you to check it out.

**AI Tools:** These can be hit or miss, but are absolutely evolving quickly. Any developer can find value in leveraging tools like Copilot, or state of the art models such as GPT4o, in their process.

These tools, I would say, aren't yet reliable enough to be depended upon, but they can go a long way towards helping to quickly understand the context of codebases or summarizing/clarifying documentation. Don't rely on them, but keep AI tooling on your radar.