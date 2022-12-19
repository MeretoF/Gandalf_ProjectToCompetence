<template>
  <div class="flexCol">
    <form>
      <div>
        <label for="name">id Competence</label>
        <input type="text" id="name" v-model="compId" />
      </div>
      <div>
        <label for="email">ids Project</label>
        <input type="text" id="email" v-model="projId" />
      </div>
      <div class="flexRow">
        <a @click="submit">Submit</a>
        <a @click="clearInfo">Clear</a>
      </div>
    </form>
    <div class="flexRow">
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="project in comp" :key="project.idCompetence" @click="clickComp(project)">
            <td>{{ project.name }}</td>
            <td>{{ project.status }}</td>
          </tr>
        </tbody>
      </table>
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Specialty</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="project in projects" :key="project.idProject" @click="clickProj(project)">
            <td>{{ project.name }}</td>
            <td>{{ project.specialty }}</td>
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
        projects: [] as Project[],
        comp: [] as Competence[],
        compId: '' as string,
        projId: '' as string,
        oToSend: {} as Sending
      };
    },
    methods: {
      clickComp(comp: Competence) {
        this.compId = comp.idCompetence.toString();
        comp.status = "OK";
      },
      clickProj(proj: Project) {
        if(proj.specialty == "OK")
          return;
        this.projId += proj.idProject.toString() + ", ";
        proj.specialty = "OK";
      },
      submit() {
        if(this.compId == '' || this.projId == '')
          return;
        this.projId = this.projId.slice(0, -2);
        this.oToSend.compID = parseInt(this.compId);
        this.oToSend.projID = this.projId.split(',').map(Number);
        axios.post('http://localhost:3000/projtocomp', {
          compID: this.oToSend.compID,
          projID: this.oToSend.projID
        })
        .then(function (response) {
          console.log(response);
        })
        .catch(function (error) {
          console.log(error);
        });
        this.compId = '';
        this.projId = '';
        this.clearInfo();
      },
      clearInfo() {
        this.compId = '';
        this.projId = '';
        this.projects.forEach((project) => {
          project.specialty = "";
        });
        this.comp.forEach((comp) => {
          if(comp.status == "OK" || comp.status == "Done")
            comp.status = "Done";
          else 
            comp.status = "";
        });
      }
    },
    created() {
      axios.get('http://localhost:3000/project')
        .then(response => {
          this.projects = response.data;
          console.log(this.projects);
        });
      axios.get('http://localhost:3000/competence')
        .then(response => {
          this.comp = response.data;
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
    background-color: rgb(43, 43, 43);
    padding: 10px;
    color: white;
    z-index: 4;
  }
  </style>