### Patch Management with Chef Automate

Nick Rycar

Lead Inside Solution Architect

Chef Software

---

## Who am I?

![Who Am I](whoami.gif)

---

## Who am I?

#### Vital Stats

* ~10 yrs. Linux Systems Administration Experience
  * ~5 yrs. Chef Config Management
* 2.5 yrs. Chef Employee
  * Transitioned to sales role as an SA.
  * Powerless to make pretty decks without my marketing team.

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
If installing packages is so simple, why don't we just do the above and call it a day? What's actually stopping us?

---

### The 'why' Stack

> pop the why stack max 5 times (ask why recursively)
> until you end up with one of the following business values:

> * Protect revenue

> * Increase revenue

> * Manage cost

---

### The 'why' Stack

>If you’re about to implement a feature that doesn’t support one of those values, chances are you’re about to implement a non-valuable feature. Consider tossing it altogether or pushing it down in your backlog.
- Aslak Hellesøy, creator of Cucumber

Note:
Does defining a patch management scheme increase revenue? Probably not.
Does it manage cost? No! It increases cost, because you have to budget time and resources to implement a system!
Does it protect revenue? Hrm... I want to say yes.
Why? Because if I'm running latest packages, I'm at less risk for vulnerabilities, which in turn means I'm less likely to have incur the cost of recovering from intrusions, hacks, etc.

---

### The goal of patch management is...

~~"...to ensure the most up to date versions of my software are installed"~~

"... to reduce the **risk** "

---

### Risk comes in many forms

* What is the risk of not upgrading?

* What is the risk of upgrading?

* Did I upgrade successfully?

Note:
Okay, so I still don't know why I don't just run that one-liner. Answer: there are multiple kinds of risks, and applying updates without a clear strategy can increase rather than decrease our risk if we're not careful.

---

### The best part

The "upgrade" part is still easy!

> apt-get dist-upgrade --force

Note:
BOOM.

---

### Patch management with Chef Automate

* Compliance <-- Risk of not upgrading.

* Workflow <-- Risk of upgrading

* Visibility <-- Check your work.

Note:
Tie it back to automate. How does it solve these specific concerns?

---

## What questions can I answer?

---

# Thanks!

nrycar@chef.io
