## Purposeful Patch Management
## with Chef Automate

--

Nick Rycar

---

## Who am I?

![Who Am I](whoami.gif)

---

## Who am I?

Technical Product Marketing Manager, Chef Software

--

#### Vital Stats

* ~10 yrs. Linux Systems Administration Experience
  * ~5 yrs. Chef Config Management
* 3 yrs. Chef Employee
  * Started as an SA
  * Transitioned into Marketing in 2017
  * My slide decks remain decidedly low-tech

---

![I Like Stories](i_like_stories.gif)

---

# What is the goal of patch Management?

Note:
Before we dive into technical details, we first need to determine what actual problem we're trying to solve.

---

### The goal of patch management is...

"...to ensure the most up to date versions of my software are installed"

Note:
My initial thought was that my goal was self-evident. I'm patching because I want the latest software!

---


### The goal of patch management is...

~~"...to ensure the most up to date versions of my software are installed"~~

Note:
This was, of course, incorrect.

---

> apt-get dist-upgrade --force

Note:
If our primary goal is to simply ensure we're running the latest system packages, that can be accomplished with a simple command!

---

> apt-get dist-upgrade --force

(or yum -y update, or Get-wuinstall -Windowsupdate -AcceptAll -Autoreboot...)

Note:
Shout-out to my non-ubuntu peeps.

---

# Now what?

Note:
If installing packages is so simple, why don't we just do the above and call it a day?
What's actually stopping us? What outcome are we actually working towards?

---

### The 'why' Stack
#### Aslak Hellesøy, creator of Cucumber

```text
"...pop the 'why stack' max 5 times (ask why recursively)
until you end up with one of the following business values:

* Protect revenue
* Increase revenue
* Manage cost

If you’re about to implement a feature that doesn’t support
one of those values, chances are you’re about to implement
a non-valuable feature..."
```

Note:
Aslak Hellesøy, creator of Cucumber provides a good framing device to help us answer that question.
Does defining a patch management scheme increase revenue? Probably not.
Does it manage cost? No! It increases cost, because you have to budget time and resources to implement a system!
Does it protect revenue? Hrm... I want to say yes.
Why? Because if I'm running latest packages, I'm at less risk for vulnerabilities, which in turn means I'm less likely to have incur the cost of recovering from intrusions, hacks, etc.

---

## Enter Chef
### Defining Outcomes

> "High performing software organizations are able to outperform their peers in each of three key outcomes:

> * Speed: The rate of software change.
> * Efficiency: Effectiveness of software change.
> * Risk: Quality of software change."

Note:
At Chef, we define the outcomes in similar fashion that can help further refine our answer.
Protecting revenue ties most directly to "Risk", but as we'll see, none of these outcomes
operate in a vacuum; being able to evaluate those risks quickly and efficiently will also be key to our success.

---

### The goal of patch management is...

~~"...to ensure the most up to date versions of my software are installed"~~

"... to *protect revenue* by reducing the **risk** to our systems"

Note:
Now we're getting somewhere! However, this still doesn't answer the question,
"If applying patches will mitigate risk, and I can do that with a simple command,
why don't I just do *that*?"

---

### Risk comes in many forms

* What is the risk of not upgrading?

* What is the risk of upgrading?

* Did I upgrade successfully?

Note:
The Answer: there are multiple kinds of risks, and applying updates without a clear strategy can
increase rather than decrease our risk if we're not careful. If the cure is worse than the disease,
no one is going to buy your medicine.
Consider: Has a system update ever broken a legacy application?
Has your printer ever stopped working after a desktop OS update?
We need to evaluate not only the risk of running outdated packages, but the risk
that upgrading those packages might have on the rest of our environment.
Even after we do that, how do we confirm that we didn't miss any critical systems?

---

### The best part

The "upgrade" part is still easy!

> apt-get dist-upgrade --force

Note:
BOOM.
With chef cookbooks we can create a way to apply our updates. With inspec profiles
we can evaluate whether a system is running the latest patches. The upgrade itself
doesn't require a particularly special process. The trick isn't finding a less
scary command -- the trick is making the command that already does what we want
less scary. That's where Chef Automate comes in.

---

### Patch management with Chef Automate

* Compliance <-- Risk of not upgrading.

* Workflow <-- Risk of upgrading

* Visibility <-- Check your work.

Note:
Chef Automate provides a number of features that help solve all of the problems we've
been discussing. Compliance is a feature that provides us with a means to evaluate our entire environments
to see where systems are out of date, and report back on the specific status of those systems.
Workflow is how Chef Automate enables Continuous Delivery of change by providing us with a way to
control the release of updates through customizable pipelines, and evaluate how those updates might
effect downstream projects **before** they're taken live.
Finally, Visibility keeps track of every change that's been applied to our servers, so that we can
confirm our updates behaved as expected across the board, whether our environments contain dozens
or tens of thousands of discrete nodes.


---

# Thanks!

nrycar@chef.io
