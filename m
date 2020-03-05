Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C8E17A01E
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 07:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15LOpLchX8URNZTltywq20vOuqTKtGuG/ju0zQhoaLk=; b=P/W9XdX7/AdgMy
	T6UiGmX9J/ZigA5lH1d7Of/1LHtkg5uGTGry+LbV1gU2b+Z5zD9HGBmN6AqQE3TGJVQQk1dsMl2r/
	5Juob6FqyH21Ow3J4YY5ou4ngYmEgZ19F/TCsGMuSgZ6iroJgT1KAe8U7OnHeM2Ylv8GApmgDk0KJ
	g/02M56KSoI6mN9yO+PXUOjMN3WsMUSn3Sj4CzoX9VV7s7zx0XO4Y07Q6Rems8HWhupTDZnIzTibJ
	wcVkdsyvLFRd+H41mktwn5IQPJdpvYGFyflzUG0g+PLYkebBdMiEhXjuW5GPphtUAdVWpbSFN8wEN
	iSsofviivYlK4ZOzwwog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9kGZ-0006FU-My; Thu, 05 Mar 2020 06:45:55 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9kGV-0006Ew-Pc
 for linux-rockchip@lists.infradead.org; Thu, 05 Mar 2020 06:45:53 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7782443BBB;
 Thu,  5 Mar 2020 06:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583390749; bh=yFhZuzSIxWqfXDd2gGA1iSTNoIdsdhOLPkwYyxsiVJc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lr6O7pV9T3mNHCxjDsdL9uH2uXUCgh0JL8xODSo7NHdYcL77KIR7zsqkiUXTu/WL0
 QzCTE9+NLH3x/muMJoJfJZ1mGvFXmAkjXeblXl75wg466mJxN8dmCPSIWLzdNYwg/U
 NPtau3CmGKSGy0VqmST/ezxScZjAdjAXJjtwOhA0EWuV+G0b9yc79duU43OJUBPJ0y
 A0SMFFY4uIktj1zvtyX2ZbZpBpwDKMmBdM+8zDlc+MotLboj4me8TzWyFUSu7SuIlZ
 JnVDs660gRPWp3+SlqfaPgfmZKJ8w34iRggP8ft3lw1fzLxMgVNjj11ArqISDP5yZB
 xF27jYyZbUWaA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 4E712A0067;
 Thu,  5 Mar 2020 06:45:46 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 4 Mar 2020 22:45:46 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 4 Mar 2020 22:45:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7W2P8y82gEMtsSYKl/dLrBc5AxHq2K8U0+azIoHfQiVrKDhpl3MaMOXUFtwEAgyfDu2yL0zI5X78cGX26Jv14upsK0MPm3CdIK0Qpkjf4DHhx1CFYi0uS1JSfWJqj5u7Lo+ibrd2gE4cD7k7NQbtt7PhItSpYxY9ooTOVksBFHXzEgQVNttZCrGoXilL29M7Omk8X9IzfvlKcUwg1HfeZ2FiEMVbmHDbIty+5AGs66WOeDPliBV+A8o0t5NsnQ3cmHkpbNBcf3PjpOlE2husLclxmZKqCNEon/dSzOEakNubI6hcirEcVtllw+5R7L8vXiB/WHlNNiZAiRgSCnnuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yFhZuzSIxWqfXDd2gGA1iSTNoIdsdhOLPkwYyxsiVJc=;
 b=HVI/RsbQMRXX+zfVBNb4v9HwHJw7s2c4c2tIqegTI/qfdVQ68Qjb/z/jYpnOzk3aKUS8eTN0DTLmL78ifiSP4E6RyHny55XYOLNsgUTcW83LTBALorvk0ssoUDq2K56YX3zCI53lBARHVetJBDdAyx7z0Rr231S9eAkt011IVxVC7x7LPOsAQ+6mrdIGKDnkgesQkPP8nlDKS6Xy4A2qvrQaPZ6kMb0GvC7vxKPnFuMzIPcQSxgoC9ZfADtzTlK31k9t5wgg9bGxgSqOtuzkEAcA01Jtg+hwBBAnfcsvjJIChq2ctcL46A9t9JZICJNrXq1otQ+k/4A3qTWPrDtZFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yFhZuzSIxWqfXDd2gGA1iSTNoIdsdhOLPkwYyxsiVJc=;
 b=f6/q4ETjeKmBuqrd7fGNUtcdSzqOzhhRNLxc2qICQtW6DMDxV7UnHqx2d8NIY4ZmK5EGz7T1VlD3EUGXqk+J7cDRD1HSnK24p3QDlcUxtICsT2K1RtnCOMaUnKItQGctPVyeekv+lV5aInpoUJ+fcS/6FjVzVVxxNxDHsf3EvUM=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (2603:10b6:208:198::11)
 by MN2PR12MB4080.namprd12.prod.outlook.com (2603:10b6:208:1d9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Thu, 5 Mar
 2020 06:45:44 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::111c:5382:5a76:21cb]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::111c:5382:5a76:21cb%4]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 06:45:44 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Topic: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Index: AQHV4zxylJsWeUZ0JUKEDMOhhpCodKgfGkgAgAA7cgCAAA+HAIAAbA0AgAKn7gCAAC2+gIABCQCAgABpVgCAASdLgIAAeQoAgAAARQCACqrrAIAAj8WAgAi4T4A=
Date: Thu, 5 Mar 2020 06:45:44 +0000
Message-ID: <bb0d6b96-f8c6-f8b9-3589-46e5ecaf37cc@synopsys.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
 <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
 <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com>
 <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
 <1d2ee918-57e4-53b2-6953-0107d7720c59@synopsys.com>
 <CAP9ODKoS5KQrhTrUvahHEhQG-WA+bfLnP4tTFxzrQaGh1nTcZw@mail.gmail.com>
 <CAP9ODKoRuB-nyjr1ksGU61PVMjFTMMWKwgpHQ=e7bChAu5Okhg@mail.gmail.com>
 <665fe49e-ebfa-bcb0-fcd1-ea1e9252b306@synopsys.com>
 <CAP9ODKo=YSNa-uNgzwP2X5yDy_qDzYjLogZLg11rRcSXr+wrFw@mail.gmail.com>
In-Reply-To: <CAP9ODKo=YSNa-uNgzwP2X5yDy_qDzYjLogZLg11rRcSXr+wrFw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hminas@synopsys.com; 
x-originating-ip: [46.162.196.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f20588ff-d9c0-41d8-aba0-08d7c0d0d47f
x-ms-traffictypediagnostic: MN2PR12MB4080:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB4080B72756B396C50F9BEF50A7E20@MN2PR12MB4080.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(366004)(346002)(136003)(396003)(199004)(189003)(81156014)(6506007)(8936002)(8676002)(81166006)(4326008)(110136005)(31686004)(54906003)(53546011)(2906002)(5660300002)(316002)(478600001)(6512007)(45080400002)(2616005)(36756003)(6486002)(66946007)(26005)(186003)(64756008)(66476007)(66556008)(71200400001)(31696002)(86362001)(66446008)(91956017)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB4080;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NgPpprpt4I57RGKSr6orK0E6h9uCTxnvbsEV7Mus+KSOYQrfrrbQaHKtDtaiU1q2HfdPRQ/KRZzB9oCBHarGub+wkLLe+iSn6wnBE3eFcm4zJVdxJHEEYy0BUEev5wlBFYJ7ZhZ1OijtBaVimqLZ7LC52wgkOxS4fzLzRyE7juFIwoeDzU792Tz5O4xuqf1WyrFQjn5Gs+YlDAn33jWJNifbYurQtnDmJ6YMKhI9O67yYS0wfDbYyfksr5o+xt9FRF4HUkU1s4dPP42AmlCUwLdeyl9Uw5HXUlt34lSqR3cLSSlQw6NwqqrjxHZ/crikQCP17P1FRIqrPCQIzvJuUJ2BN0qJEpU9fUNTgk1l/vPFQlZ4DJq9YRb15hlKtqUcAyUXJlAfPb2jNLXnL08Ovjw97CfRCi5zX+A0y4jV9Su1KMx650rYYyuPmEyG6QvY
x-ms-exchange-antispam-messagedata: eNSIZkH9SULwy45v7k7ykR8wfYOTVaEoaDqSYdsx+LMzCfOCE16A6Tu02hAF/SY0l6M36RvxApvFpd6bFn8xjyy0n1rCoBQaI24JyMI9p4wAMSJSvUHGnYheaKtD+7N9M8YCqOlM4MT+rYa+FEI5zQ==
Content-ID: <AC3DCC2BD5C1944C8A3D3752593F5481@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f20588ff-d9c0-41d8-aba0-08d7c0d0d47f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 06:45:44.4801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8+PsbFOrPwIykAkmqRGJAOITPFhCFM0m3s9JCrAfdFlgYxf6dhz6bMjy9mf63HB5M5cPtNqvznZSbEvc+MfMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4080
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_224551_872697_C7DBBD1C 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Otavio Salvador <otavio@ossystems.com.br>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Otavio,

On 2/28/2020 9:35 PM, Otavio Salvador wrote:
> Hello Minas,
> 
> On Fri, Feb 28, 2020 at 6:01 AM Minas Harutyunyan
> <Minas.Harutyunyan@synopsys.com> wrote:
>> On 2/21/2020 6:07 PM, Otavio Salvador wrote:
>>> On Fri, Feb 21, 2020 at 11:06 AM Otavio Salvador
>>> <otavio@ossystems.com.br> wrote:
>>>> On Fri, Feb 21, 2020 at 3:52 AM Minas Harutyunyan
>>>> <Minas.Harutyunyan@synopsys.com> wrote:
>>>>> On 2/20/2020 5:16 PM, Otavio Salvador wrote:
>>>>>> Hello Minas,
>>>>>>
>>>>>> Thanks for all your help on this, ...
>>>>>>
>>>>>> On Thu, Feb 20, 2020 at 3:59 AM Minas Harutyunyan
>>>>>> <Minas.Harutyunyan@synopsys.com> wrote:
>>>>>>>
>>>>>>> On 2/19/2020 7:10 PM, Otavio Salvador wrote:
>>>>>> ...
>>>>>>>> What sequence do you want us to do?
>>>>>>>
>>>>> Please provide dwc2 debug log when stop working with g_serial exception
>>>>> dump inside.
>>>>> Also provide dwc2 log when it's work without issue.
>>>>
>>>> Attached.
>>>
> 
> [  207.715898] dwc2 30180000.usb: dwc2_hsotg_pullup: is_on: 0 op_state: 3
> [  207.715942] dwc2 30180000.usb: complete: ep b45e8dac ep0, req
> 9e5949b0, -108 => 863fc1b9
> [  207.715966] dwc2 30180000.usb: dwc2_hsotg_complete_setup: failed -108
> [  207.715996] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> c659a301, -108 => f0de5013
> [  207.716050] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> f46b68c4, -108 => f0de5013
> [  207.716078] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 24890a46, -108 => f0de5013
> [  207.716100] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> fc4810fd, -108 => f0de5013
> [  207.716119] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> f641bdad, -108 => f0de5013
> [  207.716139] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 92871573, -108 => f0de5013
> [  207.716158] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> fe77b603, -108 => f0de5013
> [  207.716177] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 3e9064d5, -108 => f0de5013
> [  207.716196] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 5aae2e11, -108 => f0de5013
> [  207.716216] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 7c5834db, -108 => f0de5013
> [  207.716236] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 968af244, -108 => f0de5013
> [  207.716257] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> fa68c2eb, -108 => f0de5013
> [  207.716276] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 6cfbcee5, -108 => f0de5013
> [  207.716296] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> eea82a2b, -108 => f0de5013
> [  207.716315] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> 56ccd82d, -108 => f0de5013
> [  207.716335] dwc2 30180000.usb: complete: ep edfa46d3 ep2out, req
> a00b7148, -108 => f0de5013
> [  207.716389] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep edfa46d3)
> [  207.716410] dwc2 30180000.usb: dwc2_hsotg_ep_stop_xfr: stopping
> transfer on ep2out
> [  207.716438] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08080200
> [  207.716457] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 03f40054)
> [  207.716469] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x088a0200
> [  207.716567] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 108f89fa)
> [  207.716581] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x098c000a
> [  207.722600] gs_close: before spin_unlock_irq 1: tty->driver_data is baf4a00d
> [  207.722625] gs_close: ttyGS0 (11bbbfea,dc9a1db1) ...
> [  207.722646] gs_close: ttyGS0 (11bbbfea,dc9a1db1) done!
> [  208.040122] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 03f40054)
> [  208.040153] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x088a0200
> [  208.040177] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep edfa46d3)
> [  208.040194] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x080a0200
> [  208.040214] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 108f89fa)
> [  208.040227] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x098e000a
> [  208.040243] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 12d21028)
> [  208.040255] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.040271] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep fb6b3e60)
> [  208.040282] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.040298] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep abea3d06)
> [  208.040310] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.040326] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 8074ac21)
> [  208.040338] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.040355] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 9449e3ee)
> [  208.040367] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.040383] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 3b6cd68c)
> [  208.040395] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.040412] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 38c4d9db)
> [  208.040426] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.040443] dwc2 30180000.usb: dwc2_hsotg_ep_disable(ep 67b37434)
> [  208.040457] dwc2 30180000.usb: dwc2_hsotg_ep_disable: DxEPCTL=0x08020400
> [  208.061914] gs_close: before spin_unlock_irq 1: tty->driver_data is baf4a00d
> [  208.061980] 8<--- cut here ---
> [  208.062283] Unable to handle kernel paging request at virtual
> address 00766500
> [  208.062934] pgd = b41c9e7b
> [  208.063189] [00766500] *pgd=00000000
> [  208.063528] Internal error: Oops: 5 [#1] SMP ARM
> [  208.063945] Modules linked in: usb_f_acm u_serial libcomposite
> configfs zram zsmalloc emlog(O) rtc_rk808 clk_rk808 spi_rockchip
> wdtoken(O) [last unloaded: g_serial]
> [  208.065303] CPU: 0 PID: 1203 Comm: sh Tainted: G           O      5.4.21 #1
> [  208.065923] Hardware name: Rockchip (Device Tree)
> [  208.066364] PC is at __cancel_work_timer+0x64/0x200
> [  208.066819] LR is at try_to_grab_pending+0x44/0x1a0
> [  208.067257] pc : [<c0153c70>]    lr : [<c0152a34>]    psr: 20010093
> [  208.067818] sp : c5d91e98  ip : 00000000  fp : c094e8c8
> [  208.068289] r10: 00000000  r9 : c648fb7c  r8 : c5c88f00
> [  208.068760] r7 : 00000000  r6 : 00000000  r5 : c648d204  r4 : c5d90000
> [  208.069343] r3 : 00766500  r2 : 00766565  r1 : c648d204  r0 : 00000000
> [  208.069933] Flags: nzCv  IRQs off  FIQs on  Mode SVC_32  ISA ARM
> Segment none
> [  208.070581] Control: 10c5387d  Table: 6591006a  DAC: 00000051
> [  208.071102] Process sh (pid: 1203, stack limit = 0x7c1578a9)
> [  208.071614] Stack: (0xc5d91e98 to 0xc5d92000)
> [  208.072012] 1e80:
>      60010013 c04a2f50
> [  208.072745] 1ea0: c648fa00 00000000 00000000 c5c8c580 c5c88f00
> c0c05c88 00000000 c648fa00
> [  208.073478] 1ec0: c648fa00 00000000 c5c8c580 c049af84 c0c6f3b4
> c049b080 c648fa00 00000000
> [  208.074211] 1ee0: c648fba8 c049be10 00000000 00000000 00000178
> c648fb04 c648fb04 c09883c0
> [  208.074944] 1f00: 8010000a c5c88f00 000e0003 c5907398 c720a850
> c6e68cc0 00000008 c5c88f08
> [  208.075677] 1f20: 00000000 c02b476c 00000000 00000000 c5d95800
> c5d95c54 c0cb15b4 c5d95c3c
> [  208.076411] 1f40: c634aa80 00000000 000000f8 c0157f78 c5d95800
> c640b400 c5d90000 c640b440
> [  208.077146] 1f60: ffffe000 c013bf64 0000080f c01165cc b6f09abc
> c0c05c88 00000000 000000f8
> [  208.077879] 1f80: 00000000 c013d4b8 00000000 00000004 0050201c
> 000000f8 c0101204 c013d554
> [  208.078611] 1fa0: 00000000 c0101000 00000000 00000004 00000000
> 00000000 00503150 00000000
> [  208.079344] 1fc0: 00000000 00000004 0050201c 000000f8 00000000
> 00000000 00501a78 00000000
> [  208.080077] 1fe0: 00501b28 bec798e4 0048e360 b6e695e4 20010010
> 00000000 00000000 00000000
> [  208.080831] [<c0153c70>] (__cancel_work_timer) from [<c049af84>]
> (release_tty+0x88/0x104)
> [  208.081585] [<c049af84>] (release_tty) from [<c049b080>]
> (tty_release_struct+0x34/0x40)
> [  208.082315] [<c049b080>] (tty_release_struct) from [<c049be10>]
> (tty_release+0x43c/0x640)
> [  208.083056] [<c049be10>] (tty_release) from [<c02b476c>] (__fput+0x88/0x218)
> [  208.083702] [<c02b476c>] (__fput) from [<c0157f78>] (task_work_run+0xa4/0xc4)
> [  208.084357] [<c0157f78>] (task_work_run) from [<c013bf64>]
> (do_exit+0x430/0xaec)
> [  208.085029] [<c013bf64>] (do_exit) from [<c013d4b8>]
> (do_group_exit+0x3c/0xc8)
> [  208.085684] [<c013d4b8>] (do_group_exit) from [<c013d554>]
> (__wake_up_parent+0x0/0x18)
> [  208.086397] Code: e5953000 e3130004 13c330ff 01a042a3 (15933000)
> [  208.086948] ---[ end trace 9aa9566e42b92f1c ]---
> [  208.087367] Fixing recursive fault but reboot is needed!
> 

Sorry, but I can't find any relation between this rmmod g_serial issue 
and dwc2. Don't think that is dwc2 issue.

Thanks,
Minas


> The diff I applied was:
> 
> @@ -662,6 +662,9 @@ static void gs_close(struct tty_struct *tty,
> struct file *file)
>      struct gs_port *port = tty->driver_data;
>      struct gserial  *gser;
> 
> +    pr_debug("gs_close: before spin_unlock_irq 1: tty->driver_data is %p\n",
> +             tty->driver_data);
> +
>      spin_lock_irq(&port->port_lock);
> 
>      if (port->port.count != 1) {
> @@ -687,6 +690,10 @@ static void gs_close(struct tty_struct *tty,
> struct file *file)
>          wait_event_interruptible_timeout(port->drain_wait,
>                      gs_close_flush_done(port),
>                      GS_CLOSE_TIMEOUT * HZ);
> +
> +        pr_debug("gs_close: before spin_unlock_irq 2:
> tty->driver_data is %p\n",
> +                 tty->driver_data);
> +
>          spin_lock_irq(&port->port_lock);
> 
>          if (port->port.count != 1)
> 
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
