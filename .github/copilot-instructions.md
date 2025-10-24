# Copilot Instructions for Mastering Azure PowerShell

## Project Overview
This is a **PowerShell learning repository** designed as a progressive tutorial series for mastering Azure PowerShell. The project follows a structured lab-based approach where each directory represents a learning module with hands-on exercises.

## Directory Structure & Learning Path
The repository uses a **numbered sequential learning path**:
- `1_Using - PowerShell Basics/` - Foundation concepts
- `2_Lab - Variable and data types/` - Variable manipulation and type operations  
- `3_Lab_Arrays_Hash_Tables/` - Collection data structures
- `4_.Lab - Objects/` - Custom objects and PSCustomObject patterns

## Code Conventions & Patterns

### Script Naming
- Scripts follow the pattern `ScriptXX.ps1` where XX matches the lab number
- Exception: `1_Using - PowerShell Basics/Script01` has no `.ps1` extension
- Each script contains practical examples demonstrating the lab's concepts

### PowerShell Style Patterns
Based on existing scripts, follow these established patterns:

**Variable Declaration:**
```powershell
$CourseName="Azure PowerShell"  # No spaces around equals
$x=10                          # Consistent with existing style
```

**String Interpolation:**
```powershell
"The value of x is $x"         # Double quotes for interpolation
'The value of x is' + $x       # Single quotes for concatenation
```

**Array Definitions:**
```powershell
$CouerseVideos= 'Introduction','Installation','Variables'  # Inline arrays
$CouerseVideos_1=@(            # Multi-line arrays with @() syntax
   'Introduction'
   'Installation' 
   'Variables'
)
```

**Hash Table Patterns:**
```powershell
$ServerNames=@{                # Standard hashtable format
   Development='Server01'      # Environment-based keys
   Testing='Server02'
   Production='Server03'
}
```

**Custom Objects:**
```powershell
$Course=[PSCustomObject]@{     # Use PSCustomObject for structured data
    Id = 1                     # Spaces around equals in object properties
    Name = 'AZ-104 Azure Administrator'
    Rating = 4.7
}
```

## Development Workflow

### Adding New Labs
1. Create directory with format `X_Lab - Topic Name/`
2. Add corresponding `ScriptXX.ps1` file
3. Include practical examples that build on previous labs
4. Use incremental complexity - start simple, add advanced concepts

### Script Content Structure
- Include both basic and advanced examples in each script
- Use comments for multi-line explanations: `<# content #>`
- Use `#` for single-line comments
- Include `cls` commands for demonstration clarity
- Show multiple approaches to the same concept (see string concatenation examples)

## Key Learning Concepts
- **Progressive Complexity**: Each lab builds on previous concepts
- **Practical Examples**: Focus on real-world Azure administration scenarios
- **Interactive Learning**: Scripts designed for step-by-step execution
- **Type Exploration**: Include `.GetType()` calls to show PowerShell type system

When creating new content, maintain the hands-on, example-driven approach that characterizes this learning repository. Prioritize clarity and practical application over theoretical explanations.