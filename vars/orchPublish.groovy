def call(String tenant, String environmentName) {
    withEnv(['url=https://uipath.verticalapps.com', 'tenancy='+tenant, 'environmentName='+environmentName]) {
        withCredentials([usernamePassword( credentialsId: 'MFOrchestrator', 
                        usernameVariable: 'user', passwordVariable: 'pwd' )]) {

            def psscript = libraryResource 'orchPublish.ps1'

            psCall = pwsh returnStdout: true, script: psscript 
            println psCall           
        }
    }
}