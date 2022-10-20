sudo apt install curl gnupg
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
sudo mv bazel.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
sudo apt update && sudo apt search bazel
sudo apt install bazel
# optional
mkdir ~/bin
ln -s /usr/bin/bazel-4.2.2 ~/bin/bazel

#ninja
apt-get install ninja-build

docker run -it -w /work -v $PWD:/work -v /home/ubuntu/envoy:/home/ubuntu/envoy gcr.io/istio-testing/build-tools-proxy:master-latest bash
