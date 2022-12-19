<template>
  <div class="flexCol">
    <div class="flexRow">
      <select name="project" id="projects" @change="getCompetencesByProject" v-model="projId">
        <option>Choose a Project</option>
        <option v-for="project in listProjects" :key="project.idProject" :value="project.idProject">{{project.name}}</option>
      </select>
      <select name="competence" id="competence" @change="getProjectsByCompetence" v-model="compId">
        <option>Choose a Competence</option>
        <option v-for="project in listComp" :key="project.idCompetence" :value="project.idCompetence">{{project.name}}</option>
      </select>
    </div>
    <div class="flexRow">
      <table>
        <thead>
          <tr>
            <th>Name</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="project in comp" :key="project.idCompetence" >
            <td>{{ project.name }}</td>
          </tr>
        </tbody>
      </table>
      <table>
        <thead>
          <tr>
            <th>Name</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="project in projects" :key="project.idProject" > 
            <td>{{ project.name }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
  </template>
  
  <script lang="ts">
  import axios from 'axios';
  
  interface Project {
    idProject: number;
    name: string;
    specialty: string;
  }

  interface Competence {
    idCompetence: number;
    name: string;
    status: string;
  }

  interface Sending {
    compID: number;
    projID: number[];
  }
  export default {
    name: 'Grid',
    data() {
      return {
        listProjects: [] as Project[],
        listComp: [] as Competence[],
        projects: [] as Project[],
        comp: [] as Competence[],
        compId: '' as string,
        projId: '' as string,
      };
    },
    methods: {
      async getProjectsByCompetence() {
        try{
          this.projects = (await axios.get('http://localhost:3000/projtocomp/comp/' + this.compId)).data;
        }
        catch(error){
          console.log(error);
        }
      },
      async getCompetencesByProject() {
        try{
          this.comp =  (await axios.get('http://localhost:3000/projtocomp/' + this.projId)).data;
        }
        catch(error){
          console.log(error);
        }
      }
    },
    created() {
      axios.get('http://localhost:3000/project')
        .then(response => {
          this.listProjects = response.data;
          console.log(this.projects);
        });
      axios.get('http://localhost:3000/competence')
        .then(response => {
          this.listComp = response.data;
          console.log(this.comp);
        });
    }
  };
  </script>
  
  <style scoped>
  .flexRow {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: flex-start;
    width: 100%;
  }
  .flexCol {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    width: 100%;
    height: 100%;
    row-gap: 20px;
  }
  table{
    background-color: rgba(43, 43, 43, 0.5);
    height: 400px;
    overflow-y: auto;
  }
  td, th {
    border: 1px solid black;
    padding: 5px;
    text-align: left;
    color: white;
  }
  td:hover {
    background-color: darkred;
  }
  /* make form sticky on top of screen */
  form {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: gray;
    padding: 10px;
    color: white;
    z-index: 4;
  }
  </style>