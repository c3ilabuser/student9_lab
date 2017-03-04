node {
    stage('build') {
        openshiftBuild apiURL: '', authToken: '', bldCfg: 'lab', buildName: '', checkForTriggeredDeployments: 'false', commitID: '', namespace: 'student20-lab', showBuildLogs: 'true', verbose: 'false', waitTime: '', waitUnit: 'sec'
    }
    stage('deploy') {
        openshiftDeploy apiURL: '', authToken: '', depCfg: 'lab', namespace: 'student20-lab', verbose: 'false', waitTime: '', waitUnit: 'sec'
    }
}
