--
-- PostgreSQL database dump
--

-- Dumped from database version 10.16 (Debian 10.16-1.pgdg90+1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

-- Started on 2021-11-11 13:11:01 KST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 224 (class 1259 OID 16513)
-- Name: tbl_files; Type: TABLE; Schema: public; Owner: hamonize
--

CREATE TABLE public.tbl_files (
    seq integer NOT NULL,
    filename character varying(100),
    filerealname character varying(100),
    filepath character varying(100),
    filesize character varying(100),
    ins_date timestamp without time zone,
    keytype character varying(50)
);


ALTER TABLE public.tbl_files OWNER TO hamonize;

--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_files.filename; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_files.filename IS '저장소에 저장된 파일명';


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_files.filerealname; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_files.filerealname IS '실제 파일명';


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_files.filepath; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_files.filepath IS '파일 경로';


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_files.filesize; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_files.filesize IS '파일 크기';


--
-- TOC entry 223 (class 1259 OID 16511)
-- Name: tbl_files_seq_seq; Type: SEQUENCE; Schema: public; Owner: hamonize
--

CREATE SEQUENCE public.tbl_files_seq_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_files_seq_seq OWNER TO hamonize;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbl_files_seq_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hamonize
--

ALTER SEQUENCE public.tbl_files_seq_seq OWNED BY public.tbl_files.seq;


--
-- TOC entry 236 (class 1259 OID 16560)
-- Name: tbl_org; Type: TABLE; Schema: public; Owner: hamonize
--

CREATE TABLE public.tbl_org (
    seq integer NOT NULL,
    p_seq bigint DEFAULT 0,
    org_nm character varying(100),
    org_ordr integer,
    writer_id character varying(30),
    ins_date date,
    writer_ip character varying(30),
    update_writer_id character varying(30),
    upd_date date,
    update_writer_ip character varying(30),
    section character varying(100),
    p_org_nm character varying(100),
    sido character varying(100),
    gugun character varying(100),
    org_num character varying(100),
    xpoint character varying(100),
    ypoint character varying(100),
    all_org_nm character varying(300)
);


ALTER TABLE public.tbl_org OWNER TO hamonize;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 236
-- Name: TABLE tbl_org; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON TABLE public.tbl_org IS '조직 정보';


--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.seq; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.seq IS '부문/부서번호';


--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.p_seq; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.p_seq IS '상위부서번호';


--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.org_nm; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.org_nm IS '부문명/부서명';


--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.org_ordr; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.org_ordr IS '부서순서';


--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.section; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.section IS '부서여부';


--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.p_org_nm; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.p_org_nm IS '상위부문명';


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.sido; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.sido IS '지역(시/도)';


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.gugun; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.gugun IS '지역(구/군)';


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.org_num; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.org_num IS '부서번호';


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tbl_org.all_org_nm; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_org.all_org_nm IS '전체경로';


--
-- TOC entry 235 (class 1259 OID 16558)
-- Name: tbl_org_seq_seq; Type: SEQUENCE; Schema: public; Owner: hamonize
--

CREATE SEQUENCE public.tbl_org_seq_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_org_seq_seq OWNER TO hamonize;

--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 235
-- Name: tbl_org_seq_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hamonize
--

ALTER SEQUENCE public.tbl_org_seq_seq OWNED BY public.tbl_org.seq;


--
-- TOC entry 242 (class 1259 OID 16589)
-- Name: tbl_pc_mangr; Type: TABLE; Schema: public; Owner: hamonize
--

CREATE TABLE public.tbl_pc_mangr (
    seq bigint NOT NULL,
    pc_status character varying(300),
    pc_cpu character varying(300),
    pc_memory character varying(300),
    pc_disk character varying(300),
    pc_macaddress character varying(300),
    pc_ip character varying(300),
    first_date timestamp without time zone,
    last_date timestamp without time zone,
    pc_hostname character varying(300),
    pc_guid character varying(300),
    org_seq integer,
    pc_disk_id character varying(100),
    pc_cpu_id character varying(100),
    pc_uuid character varying(100),
    pc_change character varying(10),
    pc_vpnip character varying(20),
    pc_sn character varying(300),
    pc_os character varying(50)
);


ALTER TABLE public.tbl_pc_mangr OWNER TO hamonize;

--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 242
-- Name: TABLE tbl_pc_mangr; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON TABLE public.tbl_pc_mangr IS 'PC H/W 정보 관리';


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.seq; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.seq IS '시리얼 번호';


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_status; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_status IS '하드웨어 업데이트 여부';


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_cpu; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_cpu IS 'cpu';


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_memory; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_memory IS 'memory';


--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_disk; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_disk IS 'disk';


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_macaddress; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_macaddress IS 'macaddress';


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_ip; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_ip IS 'ip';


--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.first_date; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.first_date IS '설치일';


--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.last_date; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.last_date IS '수정일';


--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_hostname; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_hostname IS 'PC 호스트명';


--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.org_seq; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.org_seq IS '부서 관리번호';


--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_disk_id; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_disk_id IS 'disk_id';


--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_cpu_id; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_cpu_id IS 'cpu_id';


--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_uuid; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_uuid IS 'PC 관리번호';


--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_change; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_change IS 'R:신청 P:허가 C:완료';


--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_vpnip; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_vpnip IS 'vpn_ip';


--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_sn; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_sn IS 'PC SN';


--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tbl_pc_mangr.pc_os; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_pc_mangr.pc_os IS 'OS 구분';


--
-- TOC entry 241 (class 1259 OID 16587)
-- Name: tbl_pc_mangr_seq_seq; Type: SEQUENCE; Schema: public; Owner: hamonize
--

CREATE SEQUENCE public.tbl_pc_mangr_seq_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_pc_mangr_seq_seq OWNER TO hamonize;

--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 241
-- Name: tbl_pc_mangr_seq_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hamonize
--

ALTER SEQUENCE public.tbl_pc_mangr_seq_seq OWNED BY public.tbl_pc_mangr.seq;


--
-- TOC entry 248 (class 1259 OID 16620)
-- Name: tbl_polling_applc; Type: TABLE; Schema: public; Owner: hamonize
--

CREATE TABLE public.tbl_polling_applc (
    seq integer NOT NULL,
    pu_name character varying(100),
    polling_tm bigint,
    insert_dt timestamp without time zone
);


ALTER TABLE public.tbl_polling_applc OWNER TO hamonize;

--
-- TOC entry 247 (class 1259 OID 16618)
-- Name: tbl_polling_applc_seq_seq; Type: SEQUENCE; Schema: public; Owner: hamonize
--

CREATE SEQUENCE public.tbl_polling_applc_seq_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_polling_applc_seq_seq OWNER TO hamonize;

--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 247
-- Name: tbl_polling_applc_seq_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hamonize
--

ALTER SEQUENCE public.tbl_polling_applc_seq_seq OWNED BY public.tbl_polling_applc.seq;


--
-- TOC entry 260 (class 1259 OID 16672)
-- Name: tbl_progrm_udpt; Type: TABLE; Schema: public; Owner: hamonize
--

CREATE TABLE public.tbl_progrm_udpt (
    pu_seq bigint NOT NULL,
    pu_name character varying(100),
    pu_status character varying(10),
    pu_dc character varying(500),
    status character varying(10),
    deb_apply_name character varying(100),
    deb_new_version character varying(100),
    deb_now_version character varying(100),
    base_deb_yn character varying(10),
    polling_tm bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.tbl_progrm_udpt OWNER TO hamonize;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE tbl_progrm_udpt; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON TABLE public.tbl_progrm_udpt IS '프로그램 / OS 업데이트 목록';


--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.pu_seq; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.pu_seq IS '시리얼 번호';


--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.pu_name; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.pu_name IS '프로그램명';


--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.pu_status; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.pu_status IS '작업 상태값 (I-insert,U-update)';


--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.pu_dc; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.pu_dc IS '설명';


--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.status; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.status IS '업데이트 실행 여부';


--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.deb_apply_name; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.deb_apply_name IS '패키지명';


--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.deb_new_version; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.deb_new_version IS '패키지 신규버전';


--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.deb_now_version; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.deb_now_version IS '패키지 현재버전';


--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.base_deb_yn; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.base_deb_yn IS '설치파일유무';


--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tbl_progrm_udpt.polling_tm; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_progrm_udpt.polling_tm IS '프로그램 폴링타임/하모나이즈 프로그램만';


--
-- TOC entry 259 (class 1259 OID 16670)
-- Name: tbl_progrm_udpt_pu_seq_seq; Type: SEQUENCE; Schema: public; Owner: hamonize
--

CREATE SEQUENCE public.tbl_progrm_udpt_pu_seq_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_progrm_udpt_pu_seq_seq OWNER TO hamonize;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 259
-- Name: tbl_progrm_udpt_pu_seq_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hamonize
--

ALTER SEQUENCE public.tbl_progrm_udpt_pu_seq_seq OWNED BY public.tbl_progrm_udpt.pu_seq;


--
-- TOC entry 274 (class 1259 OID 16733)
-- Name: tbl_svrlst; Type: TABLE; Schema: public; Owner: hamonize
--

CREATE TABLE public.tbl_svrlst (
    seq integer NOT NULL,
    svr_nm character varying(100),
    svr_domain character varying(100),
    svr_ip character varying(100),
    svr_dc character varying(300),
    insert_dt timestamp without time zone,
    svr_port character varying(10),
    svr_used bigint DEFAULT 1,
    svr_vip character varying(100)
);


ALTER TABLE public.tbl_svrlst OWNER TO hamonize;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE tbl_svrlst; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON TABLE public.tbl_svrlst IS '서버 정보';


--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN tbl_svrlst.svr_ip; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_svrlst.svr_ip IS '서버 ip';


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN tbl_svrlst.svr_used; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_svrlst.svr_used IS '1:사용/0:미사용';


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN tbl_svrlst.svr_vip; Type: COMMENT; Schema: public; Owner: hamonize
--

COMMENT ON COLUMN public.tbl_svrlst.svr_vip IS '서버 vpn ip';


--
-- TOC entry 273 (class 1259 OID 16731)
-- Name: tbl_svrlst_seq_seq; Type: SEQUENCE; Schema: public; Owner: hamonize
--

CREATE SEQUENCE public.tbl_svrlst_seq_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_svrlst_seq_seq OWNER TO hamonize;

--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 273
-- Name: tbl_svrlst_seq_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hamonize
--

ALTER SEQUENCE public.tbl_svrlst_seq_seq OWNED BY public.tbl_svrlst.seq;


--
-- TOC entry 2965 (class 2604 OID 16516)
-- Name: tbl_files seq; Type: DEFAULT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_files ALTER COLUMN seq SET DEFAULT nextval('public.tbl_files_seq_seq'::regclass);


--
-- TOC entry 2966 (class 2604 OID 16563)
-- Name: tbl_org seq; Type: DEFAULT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_org ALTER COLUMN seq SET DEFAULT nextval('public.tbl_org_seq_seq'::regclass);


--
-- TOC entry 2968 (class 2604 OID 16592)
-- Name: tbl_pc_mangr seq; Type: DEFAULT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_pc_mangr ALTER COLUMN seq SET DEFAULT nextval('public.tbl_pc_mangr_seq_seq'::regclass);


--
-- TOC entry 2969 (class 2604 OID 16623)
-- Name: tbl_polling_applc seq; Type: DEFAULT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_polling_applc ALTER COLUMN seq SET DEFAULT nextval('public.tbl_polling_applc_seq_seq'::regclass);


--
-- TOC entry 2970 (class 2604 OID 16675)
-- Name: tbl_progrm_udpt pu_seq; Type: DEFAULT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_progrm_udpt ALTER COLUMN pu_seq SET DEFAULT nextval('public.tbl_progrm_udpt_pu_seq_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 16736)
-- Name: tbl_svrlst seq; Type: DEFAULT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_svrlst ALTER COLUMN seq SET DEFAULT nextval('public.tbl_svrlst_seq_seq'::regclass);


--
-- TOC entry 3109 (class 0 OID 16513)
-- Dependencies: 224
-- Data for Name: tbl_files; Type: TABLE DATA; Schema: public; Owner: hamonize
--

COPY public.tbl_files (seq, filename, filerealname, filepath, filesize, ins_date, keytype) FROM stdin;
1	04539578-6bee-4494-bc73-90e0bdb6486a.pem	ttkey_public_key.pem	/root/uploads/adminkeys/04539578-6bee-4494-bc73-90e0bdb6486a.pem	800	2021-10-15 16:09:47.193656	public
2	97069126-3c37-4069-8369-96f3766c8d33.pem	ttkey_private_key.pem	/root/uploads/adminkeys/97069126-3c37-4069-8369-96f3766c8d33.pem	3272	2021-10-15 16:09:51.748191	private
3	8e7bd741-61af-41f0-98d8-d4fb0dcde82f.json	hamonize.json	/root/uploads/adminkeys/8e7bd741-61af-41f0-98d8-d4fb0dcde82f.json	5404	2021-10-15 16:09:56.564731	adminconfig
\.


--
-- TOC entry 3111 (class 0 OID 16560)
-- Dependencies: 236
-- Data for Name: tbl_org; Type: TABLE DATA; Schema: public; Owner: hamonize
--

COPY public.tbl_org (seq, p_seq, org_nm, org_ordr, writer_id, ins_date, writer_ip, update_writer_id, upd_date, update_writer_ip, section, p_org_nm, sido, gugun, org_num, xpoint, ypoint, all_org_nm) FROM stdin;
1	0	Invesume	\N	\N	2021-10-15	\N	\N	2021-10-15	\N			\N	\N	\N	\N	\N	Invesume
2	1	dev	1	\N	2021-11-10	\N	\N	2021-11-10	\N	S	Invesume 	\N	\N	\N	\N	\N	Invesume|dev
3	1	degain	2	\N	2021-11-10	\N	\N	2021-11-10	\N	S	Invesume 	\N	\N	\N	\N	\N	Invesume|degain
4	1	virpc	3	\N	2021-11-10	\N	\N	2021-11-10	\N	S	Invesume 	\N	\N	\N	\N	\N	Invesume|virpc
\.


--
-- TOC entry 3113 (class 0 OID 16589)
-- Dependencies: 242
-- Data for Name: tbl_pc_mangr; Type: TABLE DATA; Schema: public; Owner: hamonize
--

COPY public.tbl_pc_mangr (seq, pc_status, pc_cpu, pc_memory, pc_disk, pc_macaddress, pc_ip, first_date, last_date, pc_hostname, pc_guid, org_seq, pc_disk_id, pc_cpu_id, pc_uuid, pc_change, pc_vpnip, pc_sn, pc_os) FROM stdin;
2		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc009	\N	4	2020061600970	\N	hamonize-vpc009	\N	no vpn	hamonize-vpc009	H
3		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc023	\N	4	2020061600970	\N	hamonize-vpc023	\N	no vpn	hamonize-vpc023	H
4		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc086	\N	4	2020061600970	\N	hamonize-vpc086	\N	no vpn	hamonize-vpc086	H
5		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc062	\N	4	2020061600970	\N	hamonize-vpc062	\N	no vpn	hamonize-vpc062	H
6		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc063	\N	4	2020061600970	\N	hamonize-vpc063	\N	no vpn	hamonize-vpc063	H
7		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc065	\N	4	2020061600970	\N	hamonize-vpc065	\N	no vpn	hamonize-vpc065	H
8		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc066	\N	4	2020061600970	\N	hamonize-vpc066	\N	no vpn	hamonize-vpc066	H
9		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc067	\N	4	2020061600970	\N	hamonize-vpc067	\N	no vpn	hamonize-vpc067	H
10		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc068	\N	4	2020061600970	\N	hamonize-vpc068	\N	no vpn	hamonize-vpc068	H
11		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc069	\N	4	2020061600970	\N	hamonize-vpc069	\N	no vpn	hamonize-vpc069	H
12		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc032	\N	4	2020061600970	\N	hamonize-vpc032	\N	no vpn	hamonize-vpc032	H
13		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc070	\N	4	2020061600970	\N	hamonize-vpc070	\N	no vpn	hamonize-vpc070	H
14		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc071	\N	4	2020061600970	\N	hamonize-vpc071	\N	no vpn	hamonize-vpc071	H
15		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc072	\N	4	2020061600970	\N	hamonize-vpc072	\N	no vpn	hamonize-vpc072	H
16		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc073	\N	4	2020061600970	\N	hamonize-vpc073	\N	no vpn	hamonize-vpc073	H
17		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc074	\N	4	2020061600970	\N	hamonize-vpc074	\N	no vpn	hamonize-vpc074	H
18		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc075	\N	4	2020061600970	\N	hamonize-vpc075	\N	no vpn	hamonize-vpc075	H
20		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc077	\N	4	2020061600970	\N	hamonize-vpc077	\N	no vpn	hamonize-vpc077	H
21		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc078	\N	4	2020061600970	\N	hamonize-vpc078	\N	no vpn	hamonize-vpc078	H
22		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc079	\N	4	2020061600970	\N	hamonize-vpc079	\N	no vpn	hamonize-vpc079	H
23		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc080	\N	4	2020061600970	\N	hamonize-vpc080	\N	no vpn	hamonize-vpc080	H
25		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc081	\N	4	2020061600970	\N	hamonize-vpc081	\N	no vpn	hamonize-vpc081	H
26		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc082	\N	4	2020061600970	\N	hamonize-vpc082	\N	no vpn	hamonize-vpc082	H
27		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc083	\N	4	2020061600970	\N	hamonize-vpc083	\N	no vpn	hamonize-vpc083	H
28		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc084	\N	4	2020061600970	\N	hamonize-vpc084	\N	no vpn	hamonize-vpc084	H
29		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc085	\N	4	2020061600970	\N	hamonize-vpc085	\N	no vpn	hamonize-vpc085	H
30		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc064	\N	4	2020061600970	\N	hamonize-vpc064	\N	no vpn	hamonize-vpc064	H
31		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc087	\N	4	2020061600970	\N	hamonize-vpc087	\N	no vpn	hamonize-vpc087	H
24	N	Intel® Core™ i5-7400 3GHz 4 (4 Physical)	8GB	SanDisk SanDisk_SD8SBAT128G1122 119GB SSD (SATA)	10:7b:44:47:4d:79	192.168.0.150	2021-08-20 05:37:07.274871	2021-08-20 05:37:07.274871	hamonize-clientpc	\N	2	161853402440	\N	a61e750dcf354127a388c66bd4063fde	\N	no vpn	hamonize-clientpc	H
33		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc089	\N	4	2020061600970	\N	hamonize-vpc089	\N	no vpn	hamonize-vpc089	H
34		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc090	\N	4	2020061600970	\N	hamonize-vpc090	\N	no vpn	hamonize-vpc090	H
35		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc091	\N	4	2020061600970	\N	hamonize-vpc091	\N	no vpn	hamonize-vpc091	H
36		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc092	\N	4	2020061600970	\N	hamonize-vpc092	\N	no vpn	hamonize-vpc092	H
37		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc093	\N	4	2020061600970	\N	hamonize-vpc093	\N	no vpn	hamonize-vpc093	H
38		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc094	\N	4	2020061600970	\N	hamonize-vpc094	\N	no vpn	hamonize-vpc094	H
39		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc095	\N	4	2020061600970	\N	hamonize-vpc095	\N	no vpn	hamonize-vpc095	H
40		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc096	\N	4	2020061600970	\N	hamonize-vpc096	\N	no vpn	hamonize-vpc096	H
41		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc054	\N	4	2020061600970	\N	hamonize-vpc054	\N	no vpn	hamonize-vpc054	H
42		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc013	\N	4	2020061600970	\N	hamonize-vpc013	\N	no vpn	hamonize-vpc013	H
43		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc014	\N	4	2020061600970	\N	hamonize-vpc014	\N	no vpn	hamonize-vpc014	H
44		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc015	\N	4	2020061600970	\N	hamonize-vpc015	\N	no vpn	hamonize-vpc015	H
45		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc016	\N	4	2020061600970	\N	hamonize-vpc016	\N	no vpn	hamonize-vpc016	H
46		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc017	\N	4	2020061600970	\N	hamonize-vpc017	\N	no vpn	hamonize-vpc017	H
47		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc018	\N	4	2020061600970	\N	hamonize-vpc018	\N	no vpn	hamonize-vpc018	H
48		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc019	\N	4	2020061600970	\N	hamonize-vpc019	\N	no vpn	hamonize-vpc019	H
49		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc020	\N	4	2020061600970	\N	hamonize-vpc020	\N	no vpn	hamonize-vpc020	H
50		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc021	\N	4	2020061600970	\N	hamonize-vpc021	\N	no vpn	hamonize-vpc021	H
51		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc022	\N	4	2020061600970	\N	hamonize-vpc022	\N	no vpn	hamonize-vpc022	H
52		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc055	\N	4	2020061600970	\N	hamonize-vpc055	\N	no vpn	hamonize-vpc055	H
53		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc025	\N	4	2020061600970	\N	hamonize-vpc025	\N	no vpn	hamonize-vpc025	H
54		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc026	\N	4	2020061600970	\N	hamonize-vpc026	\N	no vpn	hamonize-vpc026	H
55		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc027	\N	4	2020061600970	\N	hamonize-vpc027	\N	no vpn	hamonize-vpc027	H
56		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc028	\N	4	2020061600970	\N	hamonize-vpc028	\N	no vpn	hamonize-vpc028	H
57		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc029	\N	4	2020061600970	\N	hamonize-vpc029	\N	no vpn	hamonize-vpc029	H
58		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc030	\N	4	2020061600970	\N	hamonize-vpc030	\N	no vpn	hamonize-vpc030	H
59		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc031	\N	4	2020061600970	\N	hamonize-vpc031	\N	no vpn	hamonize-vpc031	H
61		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc034	\N	4	2020061600970	\N	hamonize-vpc034	\N	no vpn	hamonize-vpc034	H
62		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc035	\N	4	2020061600970	\N	hamonize-vpc035	\N	no vpn	hamonize-vpc035	H
64		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc037	\N	4	2020061600970	\N	hamonize-vpc037	\N	no vpn	hamonize-vpc037	H
65		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc038	\N	4	2020061600970	\N	hamonize-vpc038	\N	no vpn	hamonize-vpc038	H
66		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc039	\N	4	2020061600970	\N	hamonize-vpc039	\N	no vpn	hamonize-vpc039	H
67		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc040	\N	4	2020061600970	\N	hamonize-vpc040	\N	no vpn	hamonize-vpc040	H
68		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc041	\N	4	2020061600970	\N	hamonize-vpc041	\N	no vpn	hamonize-vpc041	H
69		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc042	\N	4	2020061600970	\N	hamonize-vpc042	\N	no vpn	hamonize-vpc042	H
70		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc005	\N	4	2020061600970	\N	hamonize-vpc005	\N	no vpn	hamonize-vpc005	H
71		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc001	\N	4	2020061600970	\N	hamonize-vpc001	\N	no vpn	hamonize-vpc001	H
72		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc002	\N	4	2020061600970	\N	hamonize-vpc002	\N	no vpn	hamonize-vpc002	H
73		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc003	\N	4	2020061600970	\N	hamonize-vpc003	\N	no vpn	hamonize-vpc003	H
74		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc004	\N	4	2020061600970	\N	hamonize-vpc004	\N	no vpn	hamonize-vpc004	H
75		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc006	\N	4	2020061600970	\N	hamonize-vpc006	\N	no vpn	hamonize-vpc006	H
76		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc007	\N	4	2020061600970	\N	hamonize-vpc007	\N	no vpn	hamonize-vpc007	H
77		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc010	\N	4	2020061600970	\N	hamonize-vpc010	\N	no vpn	hamonize-vpc010	H
78		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc011	\N	4	2020061600970	\N	hamonize-vpc011	\N	no vpn	hamonize-vpc011	H
79		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc012	\N	4	2020061600970	\N	hamonize-vpc012	\N	no vpn	hamonize-vpc012	H
80		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc024	\N	4	2020061600970	\N	hamonize-vpc024	\N	no vpn	hamonize-vpc024	H
81		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc043	\N	4	2020061600970	\N	hamonize-vpc043	\N	no vpn	hamonize-vpc043	H
82		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc044	\N	4	2020061600970	\N	hamonize-vpc044	\N	no vpn	hamonize-vpc044	H
83		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc045	\N	4	2020061600970	\N	hamonize-vpc045	\N	no vpn	hamonize-vpc045	H
84		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc046	\N	4	2020061600970	\N	hamonize-vpc046	\N	no vpn	hamonize-vpc046	H
85		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc047	\N	4	2020061600970	\N	hamonize-vpc047	\N	no vpn	hamonize-vpc047	H
86		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc048	\N	4	2020061600970	\N	hamonize-vpc048	\N	no vpn	hamonize-vpc048	H
87		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc049	\N	4	2020061600970	\N	hamonize-vpc049	\N	no vpn	hamonize-vpc049	H
88		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc050	\N	4	2020061600970	\N	hamonize-vpc050	\N	no vpn	hamonize-vpc050	H
89		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc051	\N	4	2020061600970	\N	hamonize-vpc051	\N	no vpn	hamonize-vpc051	H
90		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc052	\N	4	2020061600970	\N	hamonize-vpc052	\N	no vpn	hamonize-vpc052	H
92		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc056	\N	4	2020061600970	\N	hamonize-vpc056	\N	no vpn	hamonize-vpc056	H
93		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc057	\N	4	2020061600970	\N	hamonize-vpc057	\N	no vpn	hamonize-vpc057	H
1		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc008	\N	4	2020061600970	\N	hamonize-vpc008	\N	no vpn	hamonize-vpc008	H
19		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc076	\N	4	2020061600970	\N	hamonize-vpc076	\N	no vpn	hamonize-vpc076	H
32		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc088	\N	4	2020061600970	\N	hamonize-vpc088	\N	no vpn	hamonize-vpc088	H
60		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc033	\N	4	2020061600970	\N	hamonize-vpc033	\N	no vpn	hamonize-vpc033	H
63		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc036	\N	4	2020061600970	\N	hamonize-vpc036	\N	no vpn	hamonize-vpc036	H
91		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc053	\N	4	2020061600970	\N	hamonize-vpc053	\N	no vpn	hamonize-vpc053	H
94		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc058	\N	4	2020061600970	\N	hamonize-vpc058	\N	no vpn	hamonize-vpc058	H
95		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc059	\N	4	2020061600970	\N	hamonize-vpc059	\N	no vpn	hamonize-vpc059	H
96		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc060	\N	4	2020061600970	\N	hamonize-vpc060	\N	no vpn	hamonize-vpc060	H
97		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc061	\N	4	2020061600970	\N	hamonize-vpc061	\N	no vpn	hamonize-vpc061	H
98		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc097	\N	4	2020061600970	\N	hamonize-vpc097	\N	no vpn	hamonize-vpc097	H
99		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc098	\N	4	2020061600970	\N	hamonize-vpc098	\N	no vpn	hamonize-vpc098	H
100		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc099	\N	4	2020061600970	\N	hamonize-vpc099	\N	no vpn	hamonize-vpc099	H
101		Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GBG	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.160	2021-09-10 07:15:48.924821	2021-08-20 05:07:40.178	hamonize-vpc100	\N	4	2020061600970	\N	hamonize-vpc100	\N	no vpn	hamonize-vpc100	H
102	N	Intel® Core™ i5-7500 3.4GHz 4 (4 Physical)	8GB	ATA QNIX_120GB 112GB SSD (SATA)	4c:cc:6a:f6:bf:5d	192.168.0.152	2021-09-10 07:14:21.371123	2021-08-20 05:07:40.17883	hamonize-clientpc2	\N	3	2020061600970	\N	7490a9f7d989432b9f0f5314ce82e956	\N	no vpn	hamonize-clientpc2	H
\.


--
-- TOC entry 3115 (class 0 OID 16620)
-- Dependencies: 248
-- Data for Name: tbl_polling_applc; Type: TABLE DATA; Schema: public; Owner: hamonize
--

COPY public.tbl_polling_applc (seq, pu_name, polling_tm, insert_dt) FROM stdin;
1	hamonize-agent	600	2021-10-15 15:59:25.605797
2	hamonize-agent	60	2021-10-21 10:52:33.50129
3	hamonize-agent	3600	2021-10-21 11:49:48.083957
4	hamonize-agent	60	2021-11-10 11:17:03.941947
\.


--
-- TOC entry 3117 (class 0 OID 16672)
-- Dependencies: 260
-- Data for Name: tbl_progrm_udpt; Type: TABLE DATA; Schema: public; Owner: hamonize
--

COPY public.tbl_progrm_udpt (pu_seq, pu_name, pu_status, pu_dc, status, deb_apply_name, deb_new_version, deb_now_version, base_deb_yn, polling_tm) FROM stdin;
1	atom	I	\N	N	atom	1.58.0	\N	Y	0
2	atom-beta	I	\N	N	atom-beta	1.59.0-beta0	\N	Y	0
3	atom-nightly	I	\N	N	atom-nightly	1.60.0-nightly25	\N	Y	0
5	hamonize-admin	I	\N	N	hamonize-admin	1.0.0	\N	Y	0
7	hamonize-process-mngr	I	\N	N	hamonize-process-mngr	1.0.3	\N	Y	0
8	hamonize-user	I	\N	N	hamonize-user	1.0.0	\N	Y	0
9	htop	I	\N	N	htop	2.2.0-2build1	\N	Y	0
13	yarn	I	\N	N	yarn	1.22.15-1	\N	Y	0
11	stacer	U	\N	N	stacer	1.1.0hamonikr6	1.1.0hamonikr2	Y	0
14	ahnlab-v3lite	I	\N	N	ahnlab-v3lite	1.0.9.3	\N	Y	0
15	anysign4pc	I	\N	N	anysign4pc	1.1.2.0	\N	Y	0
16	boot-select	I	\N	N	boot-select	1.3.0	\N	Y	0
17	fsearch-trunk	I	\N	N	fsearch-trunk	20201015+r729.9e2e654~ubuntu20.04.1	\N	Y	0
18	github-desktop	I	\N	N	github-desktop	2.8.2-linux1	\N	Y	0
19	hamonikr-add-printer	I	\N	N	hamonikr-add-printer	1.0.0	\N	Y	0
22	hamonikr-printer-drivers	I	\N	N	hamonikr-printer-drivers	1.1.1	\N	Y	0
25	hancomoffice-hwpviewer	I	\N	N	hancomoffice-hwpviewer	9.20.0.1573	\N	Y	0
26	nprotect-online-security	I	\N	N	nprotect-online-security	1.0	\N	Y	0
27	veraport-g3	I	\N	N	veraport-g3	3.8.5.1	\N	Y	0
28	hamonize-connect	I	\N	N	hamonize-connect	1.0.1	\N	Y	0
6	hamonize-agent	I	\N	N	hamonize-agent	1.1.1	\N	Y	60
\.


--
-- TOC entry 3119 (class 0 OID 16733)
-- Dependencies: 274
-- Data for Name: tbl_svrlst; Type: TABLE DATA; Schema: public; Owner: hamonize
--

COPY public.tbl_svrlst (seq, svr_nm, svr_domain, svr_ip, svr_dc, insert_dt, svr_port, svr_used, svr_vip) FROM stdin;
3	APTURL	\N	106.254.251.74	\N	\N	28081	0	\N
4	GRAFANA_URL	\N	192.168.0.225	\N	\N		0	\N
2	COLLECTDIP	\N	192.168.0.225	\N	\N		0	\N
1	CENTERURL	\N	192.168.0.225	\N	\N	8080	0	\N
\.


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbl_files_seq_seq; Type: SEQUENCE SET; Schema: public; Owner: hamonize
--

SELECT pg_catalog.setval('public.tbl_files_seq_seq', 3, true);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 235
-- Name: tbl_org_seq_seq; Type: SEQUENCE SET; Schema: public; Owner: hamonize
--

SELECT pg_catalog.setval('public.tbl_org_seq_seq', 1, false);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 241
-- Name: tbl_pc_mangr_seq_seq; Type: SEQUENCE SET; Schema: public; Owner: hamonize
--

SELECT pg_catalog.setval('public.tbl_pc_mangr_seq_seq', 102, true);


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 247
-- Name: tbl_polling_applc_seq_seq; Type: SEQUENCE SET; Schema: public; Owner: hamonize
--

SELECT pg_catalog.setval('public.tbl_polling_applc_seq_seq', 4, true);


--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 259
-- Name: tbl_progrm_udpt_pu_seq_seq; Type: SEQUENCE SET; Schema: public; Owner: hamonize
--

SELECT pg_catalog.setval('public.tbl_progrm_udpt_pu_seq_seq', 28, true);


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 273
-- Name: tbl_svrlst_seq_seq; Type: SEQUENCE SET; Schema: public; Owner: hamonize
--

SELECT pg_catalog.setval('public.tbl_svrlst_seq_seq', 4, true);


--
-- TOC entry 2975 (class 2606 OID 16518)
-- Name: tbl_files tbl_files_pkey; Type: CONSTRAINT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_files
    ADD CONSTRAINT tbl_files_pkey PRIMARY KEY (seq);


--
-- TOC entry 2977 (class 2606 OID 16569)
-- Name: tbl_org tbl_org_pkey; Type: CONSTRAINT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_org
    ADD CONSTRAINT tbl_org_pkey PRIMARY KEY (seq);


--
-- TOC entry 2980 (class 2606 OID 16597)
-- Name: tbl_pc_mangr tbl_pc_mangr_pkey; Type: CONSTRAINT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_pc_mangr
    ADD CONSTRAINT tbl_pc_mangr_pkey PRIMARY KEY (seq);


--
-- TOC entry 2982 (class 2606 OID 16625)
-- Name: tbl_polling_applc tbl_polling_applc_pk; Type: CONSTRAINT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_polling_applc
    ADD CONSTRAINT tbl_polling_applc_pk PRIMARY KEY (seq);


--
-- TOC entry 2984 (class 2606 OID 16681)
-- Name: tbl_progrm_udpt tbl_progrm_udpt_pkey; Type: CONSTRAINT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_progrm_udpt
    ADD CONSTRAINT tbl_progrm_udpt_pkey PRIMARY KEY (pu_seq);


--
-- TOC entry 2986 (class 2606 OID 16742)
-- Name: tbl_svrlst tbl_svrlst_pkey; Type: CONSTRAINT; Schema: public; Owner: hamonize
--

ALTER TABLE ONLY public.tbl_svrlst
    ADD CONSTRAINT tbl_svrlst_pkey PRIMARY KEY (seq);


--
-- TOC entry 2978 (class 1259 OID 16598)
-- Name: tbl_pc_mangr_idx_uuid; Type: INDEX; Schema: public; Owner: hamonize
--

CREATE INDEX tbl_pc_mangr_idx_uuid ON public.tbl_pc_mangr USING btree (pc_uuid);


-- Completed on 2021-11-11 13:11:01 KST

--
-- PostgreSQL database dump complete
--

