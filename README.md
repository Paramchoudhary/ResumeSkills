# Resume Skills for Claude Code

A collection of AI agent skills focused on resume optimization, job applications, and career development. Built for job seekers, career changers, and professionals who want Claude Code to help with resume writing, ATS optimization, interview prep, and strategic job search.

## What are Skills?

Skills are markdown files that give AI agents specialized knowledge and workflows for specific tasks. When you add these to your project, Claude Code can recognize when you're working on resume and job search tasks and apply the right frameworks and best practices.

## Available Skills

| Skill | Description |
|-------|-------------|
| [resume-ats-optimizer](/skills/resume-ats-optimizer) | Optimize resumes for Applicant Tracking Systems, check ATS compatibility, analyze keyword match |
| [resume-bullet-writer](/skills/resume-bullet-writer) | Transform weak bullets into achievement-focused statements with metrics and impact |
| [job-description-analyzer](/skills/job-description-analyzer) | Analyze job postings, calculate match scores, identify gaps, create application strategy |
| [resume-tailor](/skills/resume-tailor) | Customize resume for specific job postings while maintaining truthfulness |
| [cover-letter-generator](/skills/cover-letter-generator) | Create personalized, compelling cover letters from resume + job description |
| [linkedin-profile-optimizer](/skills/linkedin-profile-optimizer) | Sync resume with LinkedIn, optimize for searchability and engagement |
| [interview-prep-generator](/skills/interview-prep-generator) | Generate STAR stories, practice questions, talking points from resume |
| [salary-negotiation-prep](/skills/salary-negotiation-prep) | Research market rates, build negotiation strategy, create counter-offer scripts |
| [tech-resume-optimizer](/skills/tech-resume-optimizer) | Optimize resumes for software engineering, PM, and technical roles |
| [executive-resume-writer](/skills/executive-resume-writer) | Create C-suite and VP level resumes emphasizing strategic leadership |
| [career-changer-translator](/skills/career-changer-translator) | Translate skills from one industry to another, identify transferable skills |
| [resume-quantifier](/skills/resume-quantifier) | Find opportunities to add metrics, estimate when numbers unknown |
| [resume-formatter](/skills/resume-formatter) | Ensure ATS-friendly formatting, create clean scannable layouts |
| [portfolio-case-study-writer](/skills/portfolio-case-study-writer) | Transform resume bullets into detailed portfolio case studies |
| [academic-cv-builder](/skills/academic-cv-builder) | Format CVs for academic positions with publications, grants, teaching |
| [reference-list-builder](/skills/reference-list-builder) | Format professional references properly and prepare reference materials |
| [offer-comparison-analyzer](/skills/offer-comparison-analyzer) | Compare multiple job offers side-by-side with total compensation analysis |
| [resume-version-manager](/skills/resume-version-manager) | Track different resume versions, maintain master resume, manage tailored versions |
| [creative-portfolio-resume](/skills/creative-portfolio-resume) | Balance visual design with ATS compatibility for creative roles |
| [resume-section-builder](/skills/resume-section-builder) | Create targeted sections optimized for different experience levels and roles |

## Installation

### Option 1: CLI Install (Recommended)

```bash
# Install all 20 skills globally (works across all projects)
npx skills add Paramchoudhary/ResumeSkills -g -y

# Install to current project only
npx skills add Paramchoudhary/ResumeSkills -y

# List installed skills
npx skills list

# List global skills
npx skills list --global
```

### Option 2: Manual Install

```bash
# Clone and copy to skills folder
git clone https://github.com/Paramchoudhary/ResumeSkills.git
mkdir -p ~/.cursor/skills
cp -r ResumeSkills/skills/* ~/.cursor/skills/
```

### Option 3: Direct Download

Download individual skill files from the `/skills` directory and add them to your AI agent's skills folder.

### Uninstall

```bash
# Remove individual skills by name
npx skills remove resume-ats-optimizer
npx skills remove resume-bullet-writer

# Or remove all skills from a directory
rm -rf ~/.agents/skills/resume-*
rm -rf ~/.cursor/skills/resume-*
```

## Supported AI Agents

These skills work with multiple AI coding assistants:

- **Cursor** (IDE)
- **Claude Code** (CLI)
- **Windsurf**
- **Codex**
- **Gemini CLI**
- **Amp, Antigravity, Augment** and 30+ more

## Usage

Once installed, just ask your AI assistant to help with resume tasks:

```
"Optimize my resume for ATS"
→ Uses resume-ats-optimizer skill

"Improve my resume bullets"
→ Uses resume-bullet-writer skill

"Should I apply to this job?" + paste job description
→ Uses job-description-analyzer skill

"Write me a cover letter for this role"
→ Uses cover-letter-generator skill

"Prep me for an interview at Google"
→ Uses interview-prep-generator skill
```

## Skill Categories

### Resume Optimization
- `resume-ats-optimizer` - Pass ATS systems
- `resume-bullet-writer` - Write achievement-focused bullets
- `resume-quantifier` - Add metrics and numbers
- `resume-formatter` - Clean, scannable formatting
- `resume-section-builder` - Targeted section creation

### Job Search Strategy
- `job-description-analyzer` - Match analysis and strategy
- `resume-tailor` - Customize for specific jobs
- `resume-version-manager` - Track multiple versions
- `offer-comparison-analyzer` - Compare job offers

### Supporting Documents
- `cover-letter-generator` - Personalized cover letters
- `linkedin-profile-optimizer` - LinkedIn optimization
- `portfolio-case-study-writer` - Portfolio content
- `reference-list-builder` - Professional references

### Interview & Negotiation
- `interview-prep-generator` - STAR stories and practice
- `salary-negotiation-prep` - Negotiation strategy

### Specialized Roles
- `tech-resume-optimizer` - Engineering/PM/technical
- `executive-resume-writer` - C-suite/VP
- `academic-cv-builder` - Academic positions
- `creative-portfolio-resume` - Design/creative roles
- `career-changer-translator` - Career transitions

## Why These Skills Matter

**The Problem:**
- 75% of resumes rejected by ATS before humans see them
- Average job gets 250 applications
- Most resumes have weak bullets with no metrics
- Job seekers apply to wrong jobs, waste time

**The Solution:**
- Pass ATS with optimized formatting and keywords
- Stand out with achievement-focused bullets
- Apply strategically to right-fit roles
- Get interviews faster with tailored applications

**The Results:**
- 2-3x more interviews per application
- Higher quality responses
- Faster job search (2 months saved on average)
- Better salary negotiations ($10K+ higher offers)

## Quick Start Examples

### Example 1: Full Resume Optimization

```
User: Here's my resume [paste]. I'm applying to data scientist roles. Help me optimize it.

Claude will:
1. Run ATS compatibility check
2. Analyze against common data scientist job requirements
3. Improve bullet points with metrics
4. Suggest keyword additions
5. Format for ATS compatibility
```

### Example 2: Job-Specific Tailoring

```
User: Here's a job description [paste] and my resume [paste]. Should I apply?

Claude will:
1. Calculate match score
2. Identify gaps and strengths
3. Flag any red flags in posting
4. Provide resume customization strategy
5. Generate cover letter talking points
```

### Example 3: Interview Preparation

```
User: I have an interview at [Company] for [Role]. Here's my resume. Help me prepare.

Claude will:
1. Generate STAR stories from your experience
2. Predict likely interview questions
3. Create talking points for each bullet
4. Research company-specific prep
5. Prepare questions to ask
```

## Contributing

Found a way to improve a skill? Have a new skill to suggest? PRs and issues welcome!

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

### Ways to Contribute
- Improve existing skill instructions
- Add industry-specific examples
- Create new skills for specialized use cases
- Fix typos or clarify language
- Add translations

## License

MIT License - Use these skills however you want.

See [LICENSE](LICENSE) for details.

## About

Resume skills for Claude Code. ATS optimization, bullet writing, job matching, interview prep, and career development.

**Keywords:** resume, CV, ATS, job search, career, interview, cover letter, LinkedIn, salary negotiation, job application

---

*Built with care for job seekers everywhere. Good luck with your search!*
