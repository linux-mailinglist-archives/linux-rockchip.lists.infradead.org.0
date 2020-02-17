Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91677161346
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 14:26:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldD1Toh4VzJKQy/ma7sUsXbhIFgy+n8tf2P8tjQcOvc=; b=fGBe18/et0z7Zr
	23lUxpzO7ac5dH0VR4qoplhLc4JZ+/Etrb7KZOBpN7pNjFNlwhd9fCDSX34LO2OTn7BcvB+xffA/X
	jTL6411bbZPz1IHPRc9ZyjoiqyogJrIIjg2lLEZ+jcRcOLJqT+l9XFbmx/p6VsncQ/hwSOD1tNzYk
	twB8iMgChn6FLTOMeUSQ/kIkUiaR1EwstyHoFoKkxK5QNs4HJuKv08Jkegd68mqAxMwE6Nkpp6qVj
	CVp1ib3M0oWgY4HlwOSznXtgjV+6L+Hre6HftoCNzKdzeQu7YAfLIsXgC6g4OquVQp5xr3weTIgk/
	GxSuwY4xmLRIXGwd47fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gQ4-0004ce-Ak; Mon, 17 Feb 2020 13:26:40 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gQ1-0004bh-67
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 13:26:38 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7007040510;
 Mon, 17 Feb 2020 13:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1581945995; bh=PJH6BAKx6sVO62TgWha3dgkQX2ztvrXyrmKcgFAXBKU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=bcLypBjnEqAe5zHysuRgH/opqbnkPvUqh20IZADYB+8RIojtWNbcCt17Qfed3dqaD
 FMGdiwM0DiDt3ysAJex+Ibz7qumPujmp+96X1SFN37jFCKUu6Ns8OTB7BwoLIMPQSL
 +aCHXn5L3Wyj56kR+GEdPutIPYr8Uwr+hwAZsxJXqBLfgIqsJRPTHDSoUbGfUo1brT
 Aqk5EJZbye5DbCIRMuao3AO4hdormxyhnKgg18NHdxIuaGnYwxH1C9w0ZlZIn+9WaX
 h6Bvu/MmPq5mlIa6F+5MymM8n88vJsPsdlqqsw/sW2eG3sWNWR9rT+7Qcpa7drCAgm
 57t/aqwVWFQPg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 1D63EA0067;
 Mon, 17 Feb 2020 13:26:32 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 17 Feb 2020 05:26:32 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 17 Feb 2020 05:26:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4eFJgK/RUXE66JTlLDwqCEv1bW/5JO4D1vu0d062uB2OEUHm4k2quYkoG+8MXtoJHSXT0IfEPOOvxvvU2E2utnbZEJC4kjY9F+l8LAJywB7GJlFWL0DWDX7KsbMscdbE+AFJ9j3LEqjS2K3h/Bctr4tZAEllH9U36bwDjBt04Pntr4u40vcefRSaJLJ37Np4Ggkd4TfxbkgR354JeZfumq5C/TzC2RifL8LbxQSobpFG+4BIkzYFlOq4PsdkuykhdFlQhL5awNIvkM262byVuZiqG8UU8FjvoRv2/rk0Eo4FRdPx3RFqyC/2/x17Eav6WvMd9mEyoInGsjz9xiwEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PJH6BAKx6sVO62TgWha3dgkQX2ztvrXyrmKcgFAXBKU=;
 b=aK2CF6xZGv1ayG0Pf97BUESKV9hIdxWe0w2MfH6mVq/Ej865UVf1V/uHOFDUHt3RDZ549Lid9WXzXTZEMMp8Pf9nigeAnop6tE8p26rVq95UXHu/fzDP34A0D503VStX7lDfD20fEQyb4Ga5Ztq/lZ9Vw/lSO5C8IkuHM9a30c8wnfrfZzQKva1RyoO1KRABRs/ypBzls/Kd9jpx2Z/9UDMe6bvjAAiMsczGGmMlpx28+eckHJP6TdNwLOhTYzMhYnfJAz5ggWM4aI8lK4SBzpBsZoKRn4E9e1KZzJBR1fztaNYWFV1vQBGKYBVGuVwvXwkBjLDTAQcdyQ4Ekec0wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PJH6BAKx6sVO62TgWha3dgkQX2ztvrXyrmKcgFAXBKU=;
 b=nZ/dGMRCmShOgrC2WcLjbPkBzhD8No4qUAMRZ6gmCB231NlcRhVbsVQ244wBSna3p3HOFQjMQl+su70RCv8za4AGM48aJe1MyrxH64TTZQJlJ1yoypBA+jenveha3+ye0KAB3YjmhQQAzAmuWRjJTy793CHVZHalIYoYnbv4FVg=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB2893.namprd12.prod.outlook.com (20.179.83.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Mon, 17 Feb 2020 13:26:31 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2729.031; Mon, 17 Feb 2020
 13:26:31 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Topic: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Index: AQHV4zxylJsWeUZ0JUKEDMOhhpCodKgfGkgAgAA7cgCAAA+HAA==
Date: Mon, 17 Feb 2020 13:26:30 +0000
Message-ID: <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
In-Reply-To: <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hminas@synopsys.com; 
x-originating-ip: [46.162.196.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 352bedfe-1ec5-47b4-31b8-08d7b3ad003f
x-ms-traffictypediagnostic: MN2PR12MB2893:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB289358F51F79FFAC5AC3E94CA7160@MN2PR12MB2893.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(136003)(396003)(39860400002)(199004)(189003)(76116006)(2616005)(478600001)(31686004)(66946007)(66556008)(91956017)(6486002)(66446008)(64756008)(66476007)(54906003)(4326008)(81166006)(5660300002)(81156014)(8936002)(71200400001)(86362001)(53546011)(110136005)(2906002)(186003)(6512007)(316002)(36756003)(8676002)(31696002)(26005)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB2893;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GOL/u6ri2VkbGVOAqcojtxwMKnHP9uco/LQFKSbXsS8B4VfWUnDkx4Whh61ImTxiCQVw8QHh3CqVc48HKV/AXiUOYLMWDNJi+5S4wwp2kQgWzJUGfpsggxwtzNjiE0A4DQ2neCztAyJFCg+4UDTjAj1HXVdlpENQgG7EgFRJvY67+OuA2F33UexuloK7/7Edqgo+ijUKVLVdjYGkbks4VmtUyg4YCsZJ4yjdfEImgtLF8fKd9Fkap6y1KkAeRpUYEkIg2YqtGPLYZubm3g7cC6W6J83YgVkw36AcP1tMlbk6JReaE4seFKPvGe44R3fUPtxr7N/k+BTlvEgUDAAvgtzc9xowwtF7m05v08IK7/gx0STtYmxotWYYDihkBv1lp3njuTivcOpmVSpYy4G3ORzq528st5E5t1T+JL5sfLcRf2QJyefl6z+cHOn/WZ6T
x-ms-exchange-antispam-messagedata: o8+b4XE7oP0/DMaaPZEF3m+lpPAtG9AXQ4IWNZ5Z+tSCmFVu8v0+FKz8fAZdF4T6lKMecbtQnP+nW+wEIdJ2dDljMgupSe2XMjibBVGwqVVsmNzqycox2DCucYN4GEy7JQT25daIMG1dOhaK10yXiA==
Content-ID: <6DE938F54FDE314DB6D56C761EAE977B@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 352bedfe-1ec5-47b4-31b8-08d7b3ad003f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 13:26:30.9666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kf2BrMPjo64zpFJOYw2YEBY/IBibTV+3UBdA28KoMzUnC3/uR3qtS1ME6o6tykWNR9uKS9FzUUjtc0/HRJeRBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2893
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_052637_379196_2DFA3965 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Otavio,

On 2/17/2020 4:30 PM, Otavio Salvador wrote:
> Hello Minas,
> 
> On Mon, Feb 17, 2020 at 5:58 AM Minas Harutyunyan
> <Minas.Harutyunyan@synopsys.com> wrote:
>> On 2/14/2020 5:40 PM, Otavio Salvador wrote:
> ...
>>>       [  312.967867] g_serial gadget: high-speed config #2: CDC ACM config
>>>       [  314.828173] dwc2 30180000.usb: new device is high-speed
>>>       [  314.866943] dwc2 30180000.usb: new address 16
>>>       [  314.889550] g_serial gadget: high-speed config #2: CDC ACM config
>>>
>>
>> I assume here you few time disconnected and then connected cable and
>> after last connection even when g_serial seen in last line it stop work.
>> Correct?
> 
> Yes. It stops responding.
> 
>>> The "[  314.889550] g_serial gadget: high-speed config #2: CDC ACM
>>> config" message is the last time it is detected. As mentioned, to
>>> restore the port to work, we need to reload the g_serial module.
>>>
>>> When we reload it, following exception happens:
>>>
>>
>> Actually exception happen in g_serial not dwc2. Why you assume that it
>> because of dwc2?
> 
> Indeed. After reporting this, it does sounds it is two decouple
> issues. The tty seems to be not properly cleaned up and it seems to
> have a resource not properly cleaned up.
> 
Enable debug prints to get full dwc2 debug prints to see what happen 
with dwc2.

> ...
>>> So, I am a bit lost how to debug this so I'd like to know what kind of
>>> information might be useful to find the root cause of it?
>>
>> And despite of above exception, g_serial enumerated it works fine?
> 
> If reloaded the USB is detected but tty seems to not work. It seems it
> fails to free the ttyGS0 previously used and thus it cannot properly
> create the new device.
> 
>> Please provide me dump of follow dwc2 debugfs's: regdump, hw_params, params.
> 
> Do you want this on working and failing state or just the failing one?
> 
After failing.


Thanks,
Minas
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
