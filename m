Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2727166FE1
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Feb 2020 07:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ks5nM3JG3R+H9oZMUXGmhFZ3Dyr7jmzn59+zovQBTUk=; b=VXJWLUWbZMef4+
	szFaq3JuC5He2ujN5tQlRsT2RmV7oMjPE8QWWm1xf/qvg8kVT6eCr8QFwmXbOXeX/FIGFB3h92vIy
	qkuA8ZzmewSyipfdDnhS7OtxCMWYQO6EN15jjglhDS4Y3+ZDmnMT9EWg57OmTIZaem1BzXdzHgqW7
	HAOxvkBiB5lTC3gWK24ePruHpa+z8ObkDN47k5KxY+x4xu2SCmFVHwZ9KQEBkWOnXHYuAq3HO9ymG
	HAhQrT+jlfrbhB37+lMOwcxRs+7AOpOQj+JgmU48zmRUdnxj8lUF450UvwraOO4onkO2N8DHSNPt/
	qkdmSS0pImoQLvR6Uiqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j52Bb-0003jy-JB; Fri, 21 Feb 2020 06:53:19 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j52BY-0003jA-Ei
 for linux-rockchip@lists.infradead.org; Fri, 21 Feb 2020 06:53:17 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C3AC0C008C;
 Fri, 21 Feb 2020 06:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1582267993; bh=lSSoHadAux+NSyOr/UQoXR3OiTdP6h8kp/PUFr4MRgg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=X2+Qn6sfXWcV6SQue4rY1I/jXjBNtmJ3J0pTsBQzdUgsF2USll68jBKMHVY9ff6m1
 2haXq6AkRSjMRQzlRvRtTiIVGJNcIOo1hAX65x0geKhjpxszlOSuMtuhnc0+N5/V6I
 xC0etCduVHZqyKWJZrP7bxmtQJl0m73LN+/e9m23LKFxtI1KLC72C6zRCCBtEZM80k
 yNZa5noCcsLK0tDiPoODE7bKRM7M0WO4scbXYN7SgUnicL2RqX6jgA8K5za5IqyjgO
 MqgJiNq90fGLjGuU3lAHUgnDg5GemPcApzOglkykTeRWUiCpXSiH+TKYrkrVyBMSAI
 8xrH1th0rrLGg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id DD0C9A00B0;
 Fri, 21 Feb 2020 06:53:08 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 20 Feb 2020 22:52:57 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 20 Feb 2020 22:52:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nmgsMVLeUVORATP7qngAB4YUbJH/G5A/5tH0RcsmHzDO0jdalc2F+tXt0pCALxLu89iAMmOMJwQ1ZHb1qMEU+9pyroJjliBxeEu1pk4j+Pw+ata4uNr740i3uMPPomkHGygA9aWYA7G6j8tmUgcslLZ0rsaqH8NwaKfXYwWqvRu0X3syQJxjforptGvVQWIVu7x8LH13ojVCnF5HKrX0McLTO5hdNbHNhfHeJCWyB0EtIb24ptXtdRDo+XTsjg6RkVfe6MI10ZlhWhYh3ohCUc1J4FekDtp+ErjGSKBBJuBNwwS8LPSjBUMqN2ftOFzwMnn+0S8yAhILev3d0JLN8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lSSoHadAux+NSyOr/UQoXR3OiTdP6h8kp/PUFr4MRgg=;
 b=EuMkkrCo788S5r2KlKkZrNd7QZjSPK40DMpq7V1kZw5rxc9EurPDIFDkHbo9Sxp9iYBF/KxB1vzOnZdupB6oddB52Af9+HqzdECIzgLbAsUr6PdMS8MJiRwcv6O3mRAg5a/Ff8v0DnC+V/qbSUOutG2Xus0Gc4rA4URSwEHuL6djND33i7hIQwi3vkQZUPayVgRZpbrjuP6VKRbjk3OPjcj11AFJaZrMh4SfyyoedSMI8zJOP0T62MBKkFDqxht1HN0C9C+dnORDUxvJpkrFdocKuUgtyffiZP5f2zugijt3wXiNdIOvQwZw7mYPQ327JOP4rGfZEVBaxoyI3FjRXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lSSoHadAux+NSyOr/UQoXR3OiTdP6h8kp/PUFr4MRgg=;
 b=pNVljr6+M6WR4ofbBijPC4AQVJkNwPs+b63LpoJVSVgbXQCmLrfjfjoSYzsNozF9BV+Lx5Lm3+QWURiaRnN0AMTqsIrW1gBc28HLfVqzpOATSsOo0zscam6kBP4mDKpxkdx6wTMSBxlK/yOKjCudNfstZlnF7iXaosJtvrid7ik=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (2603:10b6:208:198::11)
 by MN2PR12MB3935.namprd12.prod.outlook.com (2603:10b6:208:168::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.31; Fri, 21 Feb
 2020 06:52:55 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2750.021; Fri, 21 Feb 2020
 06:52:55 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Topic: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Index: AQHV4zxylJsWeUZ0JUKEDMOhhpCodKgfGkgAgAA7cgCAAA+HAIAAbA0AgAKn7gCAAC2+gIABCQCAgABpVgCAASdLgA==
Date: Fri, 21 Feb 2020 06:52:55 +0000
Message-ID: <1d2ee918-57e4-53b2-6953-0107d7720c59@synopsys.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
 <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
 <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com>
 <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
In-Reply-To: <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 76d18a43-84df-4dce-4275-08d7b69aadbc
x-ms-traffictypediagnostic: MN2PR12MB3935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB3935F14BAD4246C7C1FFC158A7120@MN2PR12MB3935.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(366004)(396003)(39850400004)(199004)(189003)(54906003)(66446008)(66556008)(71200400001)(66476007)(66946007)(2616005)(110136005)(316002)(81166006)(31686004)(8676002)(81156014)(2906002)(64756008)(8936002)(36756003)(76116006)(91956017)(478600001)(4326008)(86362001)(6506007)(53546011)(186003)(5660300002)(31696002)(6486002)(6512007)(4744005)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3935;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mb2HJ0ErJ4lhRqbqa1Y8YEuntBQF9PzSwhGvrAFpo3S3Sf5GMwuAvd+tGrgKXBrgo0fdA8nHQBw8ZteD3PxV2oM0K9rv8nIqTXVwXDk+HlKiMkNtCZBZQGviblzrkg9YeBvqTjFL0SXTM/+7PJWVmyG7EOjgJpJ0C90m7cOsPN4r9mRrN5HD1C2vG2Q3etniOaOdnkSRE/GCN4MSZGFrycjVkVONahxPqq80KXv43Rs1+ARqHqtTtHBJhDYvJU+fITorbL9sTJ8OZ8pek2dZ3BS2FUbtWxiq5UqsQ6DsOwWzIACpszW+Sw4FJtuwfgKZiMPsqH/XY8d86IJWRaOYP3bSw17ibn505CElOH1QRSU5QVC3peT9GpSCNbdMKhMafvnhXMrq0s909mIwviDja9JDOOJJH0xuweaO7D2N+ouElMRH3DxbiqpO5Rh+AQmB
x-ms-exchange-antispam-messagedata: 8QZ2qwXmxQdcyhY+aR8Zv0WjQXZrdaE4FzRVfOClpuWvHwcF3I/hNzADIq0dYHCo1ltQZcB6HBq54N51iZq5yw/erwJdvvUN72YPbls66pIUloR+x5NXgJmEPtl/hmH6ypSnmz0FgX9lITH5qIVFeQ==
Content-ID: <A0FA17DE08992D46951D53D1D2CFD12E@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 76d18a43-84df-4dce-4275-08d7b69aadbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 06:52:55.0357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 059VbqZ9pfW2GJffxknR7sY3ieBWKBNUXfPfZBK1/n+w9y+rRMXrKRvO284qTvnbkYV7RnrJJzIWc3mlcQJ/jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3935
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_225316_588632_0EA163C8 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 2/20/2020 5:16 PM, Otavio Salvador wrote:
> Hello Minas,
> 
> Thanks for all your help on this, ...
> 
> On Thu, Feb 20, 2020 at 3:59 AM Minas Harutyunyan
> <Minas.Harutyunyan@synopsys.com> wrote:
>>
>> On 2/19/2020 7:10 PM, Otavio Salvador wrote:
> ...
>>> What sequence do you want us to do?
>>
Please provide dwc2 debug log when stop working with g_serial exception 
dump inside.
Also provide dwc2 log when it's work without issue.

>> Yes. Can you provide also USB trace >
> I can, however, it is not clear to me what you want us to do.
> 
> Should we use, on host side, usbmon? or do you want something different?
> 
Do you have any USB tracer equipment to record trace between host and 
device?

Thanks,
Minas
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
