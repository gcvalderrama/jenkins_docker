import jenkins.model.*
import hudson.security.*

def adminUsername = System.getenv("JENKINS_USERNAME")
def adminPassword = System.getenv("JENKINS_PASSWORD")
def jenkins = Jenkins.getInstance()

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount(adminUsername, adminPassword)
Jenkins.instance.setSecurityRealm(hudsonRealm)
def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
strategy.setAllowAnonymousRead(false)
Jenkins.instance.setAuthorizationStrategy(strategy)

Jenkins.instance.save()