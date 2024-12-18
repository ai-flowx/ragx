use serde_derive::{Deserialize, Serialize};
use serde_yaml;
use std::error::Error;
use std::fs::File;
use std::path::Path;

#[derive(Clone, Default)]
pub struct Config {
    pub config_data: ConfigData,
    pub config_file: String,
    pub listen_port: String,
    pub repo_path: String,
    pub version_info: String,
}

#[allow(non_snake_case)]
#[derive(Clone, Default, Deserialize, Serialize)]
pub struct ConfigData {}

impl Config {
    pub fn build(&mut self) -> Result<(), Box<dyn Error>> {
        self.config()?;
        self.listen()?;
        self.repo()?;
        self.version()?;

        Ok(())
    }

    pub fn config(&mut self) -> Result<(), Box<dyn Error>> {
        if self.config_file.len() == 0 {
            return Err("invalid name".into());
        }

        if !self.config_file.ends_with(".yml") && !self.config_file.ends_with(".yaml") {
            return Err("invalid suffix".into());
        }

        if !Path::new(&self.config_file).exists() {
            return Err(format!("invalid {}", self.config_file).into());
        }

        let f = File::open(&self.config_file)?;
        self.config_data = serde_yaml::from_reader(f)?;

        Ok(())
    }

    pub fn listen(&mut self) -> Result<(), Box<dyn Error>> {
        if self.listen_port.len() == 0 {
            return Err("invalid port".into());
        }

        Ok(())
    }

    pub fn repo(&mut self) -> Result<(), Box<dyn Error>> {
        if self.repo_path.len() == 0 {
            return Err("invalid path".into());
        }

        Ok(())
    }

    pub fn version(&mut self) -> Result<(), Box<dyn Error>> {
        if self.version_info.len() == 0 {
            return Err("invalid version".into());
        }

        Ok(())
    }
}
