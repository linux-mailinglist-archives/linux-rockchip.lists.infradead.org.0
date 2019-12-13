Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6804E11E311
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 12:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vX239xHXzlTfd/1+KujC8a0JLhCL8O8bnby+cdZ9QAk=; b=hgRD7IkyzYUPcT
	h7JpJOIDdYKbfCcf3JLG8pkH0BSuvPEYlkgg2p+3/VBTzVGVwwMUKYJCDxVpk+J1C+895h4cMrFUq
	N8difM82e2WcTWIV3MfbOfcXl14V6GVb1YozJw+eODNjIG/UPCUtibV7EY5Sb3ofUt/ID23Iwn8Z/
	w/dyok3HzUK7vBlBT5WoRGtLh+EL23DeO7WMMqH21ywJBbBlUSmRwlkODcQun3BeUWDvzbMbCQKav
	DPAW7tAV3v7VDLejPfsryJFYo6piamP7khe1h+4pAuAORdE8i9Eh/oh5eXqMv0nKk2DWx2SdQ1gSG
	2J/5DjzfK+MLhnJUoIIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifjYL-0007gz-37; Fri, 13 Dec 2019 11:56:13 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifjYG-0007fq-JZ
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 11:56:10 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1657CC0273;
 Fri, 13 Dec 2019 11:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576238164; bh=z3kDkkrRQREopPqRk0LRHErJ+w5MzXDxNidL/nJ9g8w=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=RFUYy0kH/QTPDjwbx23MeX0nOXB5Z9zAn4nPIWSV0KGkvBDZpmCLPCK+Fb/tQOWx4
 U2VBdhOfcVMcOpmy+m+KVWMRxzLIk1UtnXzMJqYdzhqTqpBLYE/Wfu4B+Ft31mLIHH
 4He3UQ8j5coEQabGiklnAn9S+9heNQe1smoaa1OjKAH0Zba7NDI2taNBnfhCq7S046
 FdxWTzjXfeSP6knVKXpLVrxw1++BTcu0yRoGMyu4XX6HOkkVWITEWeTcpNDluPReF/
 OocSBFov4PxlHjdNBUE6EMwI4EKGcTHQo018rCp6Tjqct/gnltSEphm+UBF09NNB/s
 7y7jNbdqj/t2Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id E81AAA0079;
 Fri, 13 Dec 2019 11:55:56 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.13.188.44) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 13 Dec 2019 03:55:40 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.13.188.44) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 13 Dec 2019 03:55:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YNSHQPblydau+NNmdm/vLlfJJFeL9p7ZFCC9wg7GJdZxTp8Zr+2y11v7lp4J37fyZ5VQMC51o73wN5QjIjD4IAFw4iier5puhYzaO1gZhk/fXus4/OgpBCIFrT+bXNGI/bwSrtU+E7mSpqnl+8tdDJhA+ANHv1H2AOKVGVPiQgf8nKPkuEa+gqB57afiebBYsKIcNn4Ekd69nvRK8HVRHbQ1mzFnRtnBUgFPR+o5R8NFS8mjHmfxba2oCoKNUUfzzoZPGTDcEKC0ya7RHG0pg2eG21PsW5SPMRxfVWA+hxWIgRklPRyymJ0KZQEK/gixlmC0kn4BEHOME1zlTmdi7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z3kDkkrRQREopPqRk0LRHErJ+w5MzXDxNidL/nJ9g8w=;
 b=CxZILkgWIB8QR8EwkcILcvirdPdIX0HJnCQjfJ+oHCp7gwZTmwdCpFiHXDGTGQOape56IJz6wRhbl2/VcyQoF2zeg5vY6ujz46LkLKUYOfhcTm662FbhCN9fS3Zv016/QpWIYfIwkq2BGh/HDbdifsOzudlzI+Wx9e6BwAcKTAz0VAJDYfyB7MTB+X3kZstgE+BTC+lvSIHDBuML8ZnFAvK/30NhGcTGb2G/Kh6D+kjh1/w56/ync12b4BD7ObMHG1jK3O30pQy05gE3/6TjA6mMDv4CS16DHJN6D6WlGvObQXaEoDcgwv6zdFB2bW/TKqx/tfEQm+J23nhQOqH6Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z3kDkkrRQREopPqRk0LRHErJ+w5MzXDxNidL/nJ9g8w=;
 b=bRlv8ZXyvhUu9iT/UDzW+Qoqst8NB2yXheWcqSC32NAXhVPzBKUkrYxsYyS+EDe+HjeFj5DBsYbY6NSRawFDA+Gm5K8pc6rYR5uLyqSm7c0B/VFVLooxb86l2y7nKOYUXIj/QoNzzH1ly6G2mmA9w0+HsMOX+a4H3o4NeFC/OJM=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB2928.namprd12.prod.outlook.com (20.179.83.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Fri, 13 Dec 2019 11:55:38 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb%5]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 11:55:38 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Jack Mitchell <ml@embed.me.uk>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: RK3288 dwc2 USB OTG + macOS
Thread-Topic: RK3288 dwc2 USB OTG + macOS
Thread-Index: AQHVWQgnMkJE65IZHEGxyc1XtnBgSqcTjyUAgI183ACAF5GRgIAACNSA
Date: Fri, 13 Dec 2019 11:55:38 +0000
Message-ID: <9ba410fb-80c7-8500-f1b3-f4f777868644@synopsys.com>
References: <e6321abc-1d3a-cfa1-638a-6051719462ad@embed.me.uk>
 <bcda1da2-fcdf-2c5b-d07b-5cf397571eb7@embed.me.uk>
 <3e45e70d-1e59-373d-76b7-b6a8a6320514@synopsys.com>
 <8a2341be-7b34-54d1-83aa-d8961d2c1618@embed.me.uk>
In-Reply-To: <8a2341be-7b34-54d1-83aa-d8961d2c1618@embed.me.uk>
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
x-ms-office365-filtering-correlation-id: b8df2836-e729-4cf3-c02f-08d77fc35eee
x-ms-traffictypediagnostic: MN2PR12MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB2928931DD2823A6E984981A6A7540@MN2PR12MB2928.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(366004)(376002)(396003)(136003)(199004)(189003)(110136005)(81156014)(8676002)(8936002)(26005)(81166006)(6512007)(66946007)(76116006)(66446008)(2906002)(2616005)(66476007)(478600001)(64756008)(91956017)(186003)(66556008)(36756003)(31686004)(4326008)(71200400001)(6486002)(53546011)(316002)(6506007)(966005)(86362001)(31696002)(54906003)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB2928;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o7uu6OOLu3qOs2Y4bURzrPWFzr1RaPjGPaioLfwoUpSmHi17SxpcnX7L4JPO1BNefNYciH/3MYnEb6UoR9NCJTUUheRnhl04KYpOcKDKms1kW/BbFAEWy0rW8fzIDdQLNA5phpgZKzXB9r67bOYrYFVot4DGL8NO6kncFBYt+jNHMiW6cjOJFt31cz4LmnKUBajaTC6HgT5qB2wE6/VRVI3K6FPhbvUBnF36fYqyhicj2L721cn+/3C96baSC30AwgtEcQ44wX9IPBWi3ohLWjaQ3aIFWmqUDqwRfwTrkaLj9r8SlCei9z+oWnujRFC/rSSredYXawExj6Y2N0VDI9apFWguhEYtX1mA4xw5ALKlw6D1Sfc3oIB/X0ZWA3XMyFcZBN5No0zrZcxLssWWQaDWo7nMfkJSufKGGyWbT34MaJyK06uCX6hby8mNzYmmcPyi12tZz4htpOznFxaw379tWfB8Z8q1EGfNPXeMPXo=
Content-ID: <ED71CF75D27B3B41AE792B3FDCC17308@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b8df2836-e729-4cf3-c02f-08d77fc35eee
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 11:55:38.3194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rgdcjl1LYZ41KEI1SPc1FMjfwKXKsHGZdZCZU8cAX+p0dSVJgnmPTocpE0es0qHCUVSuZP6MRzmYR/0p+kxsTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2928
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_035608_712753_DDAF27F8 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Phillip Karls <prkarls@gmail.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jack,

On 12/13/2019 3:24 PM, Jack Mitchell wrote:
> Hi Minas,
> 
> On 28/11/2019 11:29, Minas Harutyunyan wrote:
>> Hi Jack,
>>
>>
>> On 8/30/2019 2:49 PM, Jack Mitchell wrote:
>>> On 22/08/2019 17:06, Jack Mitchell wrote:
>>>> I'm having issues on a Firefly rk3288 board when trying to use USB
>>>> gadget ethernet on macOS. The dr_mode is set to "otg" and it works fine
>>>> with my Linux desktop.
>>>>
>>>> If I set the dr_mode to "peripheral" macOS will work, but still takes
>>>> around 10 seconds to enumerate the device which makes me think it's only
>>>> just working. However, I need the port to be in "otg" mode as it will
>>>> switch between peripheral/host use cases.
>>>>
>>>> I've attached a log from the dwc2 driver from mainline Linux 5.2 when
>>>> being plugged into the macOS device for 30 seconds, then removed. The
>>>> mac in this case is a 2013 macbook pro. Any pointers in the right
>>>> direction would be greatly appreciated.
>>>>
>>>> Regards,
>>>> Jack.
>>>>
>> Sorry, for late response.
>>
>> Could you please apply recently submitted patch "[PATCH] usb: dwc2: Fix
>> SET/CLEAR_FEATURE and GET_STATUS flows" and test again.
>>
> 
> Tested and confirmed working, many thanks.
> 
> Tested-By: Jack Mitchell <ml@embed.me.uk>
> 

Thanks for testing.

Thanks,
Minas


>>>
>>> I've been poking about with this some more and I've managed to bisect
>>> the issue down to the following commit
>>>
>>> 729cac693eecfebdb9e152eaddddd358ae2decb7 usb: dwc2: Change ISOC DDMA flow
>>>
>>> If I build before this commit everything works fine with a g_ether
>>> gadget device on mac. Unfortunately it's a rather large change which I
>>> can't just revert in master as it's got multiple dependant commits
>>> later. So, any advice on what could be causing this or how to help debug
>>> it would be much appreciated, as at the moment I've just forward ported
>>> the working 4.16 version of the driver over the 5.3-rc6 broken driver
>>> which isn't very sustainable in the long run.
>>
>> I don't think that issue root cause coming from mentioned by you above
>> patch. Based on log you provided, SET_FEATURE control transfer not
>> completed by gadget - ZLP on status stage not sent to host.
>>
>>>
>>> Regards,
>>> Jack.
>>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_linux-2Drockchip&d=DwICaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=Xlr_-nLN_p1MN4FzrE0tJo1DDBm8TYUsN3fQQLnAL7c&s=TgaRUGhlRfNs9MjE3VRHE343W4Eb8cTYCWVXR3KSvhQ&e=
>>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
