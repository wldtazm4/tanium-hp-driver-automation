# Cursor Rules for HP CMSL & HPIA Tanium Solution

## Code Structure and Organization

1. **PowerShell Script Requirements**
   - All scripts must be compatible with PowerShell 7+ (preferred) or PowerShell 5.1
   - Scripts must include proper error handling and logging
   - Use consistent naming conventions: `Verb-Noun` format for functions
   - Include comment-based help for all functions and scripts
   - Follow PowerShell best practices for parameter handling and pipeline support

2. **Configuration Management**
   - Use JSON5/JSONC format for configuration files
   - Configuration files must be well-documented with comments
   - Required fields must be validated before execution
   - Platform IDs must be 4-character hex strings
   - Repository paths must follow structure: `[RepositoryBase]\[OS]\[PlatformID]`

3. **Repository Structure**
   - Each HP platform must have its own isolated repository directory
   - Maintain clear separation between different OS versions
   - Follow HP's recommended repository organization
   - Implement proper cleanup procedures for obsolete files

## Security and Validation

1. **Security Requirements**
   - Verify digital signatures of all downloaded executables
   - Implement proper access controls for repository directories
   - Never store sensitive information in plain text
   - Follow Tanium security best practices for package deployment

2. **Validation Rules**
   - Validate configuration before execution
   - Check repository integrity after updates
   - Verify platform IDs against HP's valid platform list
   - Ensure proper error handling for network operations

## Documentation and Logging

1. **Documentation Requirements**
   - All scripts must include proper documentation
   - Configuration files must be well-commented
   - Maintain up-to-date README files
   - Document all changes in appropriate markdown files

2. **Logging Standards**
   - Implement consistent logging format
   - Include timestamps in all log entries
   - Log all significant operations and errors
   - Maintain log rotation and cleanup

## Testing and Maintenance

1. **Testing Requirements**
   - Support dry-run mode for testing
   - Implement proper test cases for all functions
   - Validate package deployment process
   - Test update installations in controlled environment

2. **Maintenance Guidelines**
   - Regular repository cleanup
   - Version tracking for HPIA and CMSL
   - Monitor repository disk usage
   - Regular updates of platform configurations

## Best Practices

1. **Code Quality**
   - Follow PowerShell best practices
   - Implement proper error handling
   - Use consistent coding style
   - Include appropriate comments

2. **Performance**
   - Optimize repository sync operations
   - Implement proper cleanup procedures
   - Monitor and optimize disk usage
   - Consider bandwidth usage in network operations

3. **Reliability**
   - Implement proper error recovery
   - Maintain backup procedures
   - Ensure consistent operation across environments
   - Follow HP's recommended practices

## Deployment

1. **Package Requirements**
   - Follow Tanium package deployment guidelines
   - Implement proper versioning
   - Include necessary documentation
   - Ensure proper error handling during deployment

2. **Update Process**
   - Implement proper version checking
   - Follow HP's update recommendations
   - Maintain update history
   - Ensure proper rollback procedures

## Monitoring and Support

1. **Monitoring Requirements**
   - Implement proper logging
   - Monitor repository health
   - Track update success rates
   - Monitor system resources

2. **Support Guidelines**
   - Maintain troubleshooting documentation
   - Implement proper error reporting
   - Follow support escalation procedures
   - Maintain contact information for critical issues 