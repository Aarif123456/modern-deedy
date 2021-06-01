# Modern Deedy

[![Apache license](https://img.shields.io/github/license/Aarif123456/modern-deedy?style=for-the-badge)](http://www.apache.org/licenses/)

A one-page, single-column fork of [Deedy](https://github.com/deedy/Deedy-Resume), originally created in [resumake.io](https://resumake.io).

## Motivation 🤔

I love the way [Jake's Resume](https://www.overleaf.com/latex/templates/jakes-resume/syzfjbzwjncs) is laid out, but it feels overused. Deedy's resume looks beautiful, but the two-column approach feels outdated. So this is template is my attempt to combine the things I love about each template. Also, I wanted to make it easy to customize the look of the resume. So, I set it up so you can download fonts from [google fonts](https://fonts.google.com/) and quickly give your resume a new look.

## Preview :eyes:

![Preview](https://i.imgur.com/92v0sxg.png)

## Quick Start :rocket:

You can build it locally on your machine with `xelatex` or open the project in overleaf. I recommend the latter.

### Steps to open in Overleaf

[Overleaf template](https://www.overleaf.com/latex/templates/modern-deedy/cxtjgrmpsrvh)

If the template gives you an error after opening. Then you will need to change the compiler.

![Change Compiler](https://i.imgur.com/ypHmlbX.gif)

Step 1

![Press Recompile](https://i.imgur.com/OPJ3DPp.gif)

Step 2

## API details :gear:

If you want to change the font just download the fonts and move the unzipped folder to the fonts folder. Then go to local-font.sty and change the font name and folder at the top folder. You can crtl+f `\newcommand{\fontFolder}` to find it faster.

## Resume Tips :books:

No resume template can turn into a resume with bad content into a good resume. So, here are some tips and resources to get you started. And, remember a good resume can only get you past the resume screen. So, you still need to learn to do well on the OA and interviews.

1. Do shit, so you have things to put on your resume.  
    - Build projects (take classes with big projects)
    - Learn multiple languages
    - Contribute to open source
    - Network
    - Read [CTCI](https://www.amazon.ca/Cracking-Coding-Interview-Programming-Questions/dp/0984782850) for more tips.

2. Learn how to write good bullet points.
    - Try to turn your points into achievements. Think about your impact. [Guide](https://2by22.blog/overhaul-resume-highly-effective-tips/)
    - Quantify where you can, but estimates are fine but avoid making up numbers
    - Target your resume, make a giant resume that spans multiple pages, filled with all your accomplishment. Then comment out the bullet points, projects and/or experiences you won't use on your "main" resume. Then when you apply to a position, you can quickly adjust your resume to be more targeted. The 2-5 minutes this will take is well-spent.
    - Avoid jargon
    - Don't have any grammatical or spelling errors. I recommend using services like [Grammarly](https://www.grammarly.com/), [Hemingway editor](https://hemingwayapp.com/), [ProWritingAid](https://prowritingaid.com/)

3. Stop optimizing for the ATS
    - The truth about the ATS
        - The ATS doesn't reject you, people do. Automated rejections are caused by knockout questions  e.g. are u authorized to work in the US
        - Ex-google re recruiter Amy Miller - looked at them by the date the application was submitted - so the advice here would be to apply quickly after job openings are posted ...
        - Some recruiters rank by how well a candidate's resume matches the job description but this isn't common
        - Actual resume prioritization goes more like this - referral -> locals -> no visa -> countries easy to get visa for -> everyone else
        - Some companies have a minimum job description/resume match criteria - e.g. Taleo supports this but again this tends to be more of an exception than a rule
    - Why ATS optimization feels like it helps
        - Let's say a job gets filled - so you are no longer in the queue- your resume is still in the applicant tracking system
        - Recruiters can search for keywords in the ATS - e.g ("Software Developer" AND ("Java" OR "C++" OR "Python") AND "Algorithm\*")
        - A lot of recruiters tend to look at the job description before creating their search - better matches means you are more likely to hit up by recruiters during this search process -SO TAILORING UR RESUME STILL HELPS
        - Note: not all recruiters are technically inclined. For example, they might not know something like C# and Java are hella similar. Some recruiters might legit just crtl+f keywords.
        - but if ur resume seems too ATS optimized (e.g. keyword stuffing) a lot of recruiters will just toss ur resume
    - References:
        - An HR worker describes how they use the ATS: [Reddit](https://www.reddit.com/r/jobs/comments/cmezx2/ats_myths_and_facts_why_you_were_really_rejected/)
        - Ex-google recruiter explaining the ATS: [YouTube](https://www.youtube.com/watch?v=U5K2F--rNe4&feature=youtu.be)

- Where I got most of my info
    - [The Tech Resume](https://thetechresume.com/)
    - [The Google Resume](https://www.amazon.ca/Google-R%C3%A9sum%C3%A9-Prepare-Microsoft-Company/dp/151138459X)
