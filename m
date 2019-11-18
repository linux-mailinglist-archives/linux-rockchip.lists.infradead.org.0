Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1E5FFF53
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 08:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4pDeRqST0fCskppTbvgTFcjTvWi+lTW93vqQtDgu20=; b=MY41lnpLLw7MZM
	chL1D0SJHs6btgBS6BzHT4m7mS9wi8j1vJoS4PIkPc//oT1d0KmNxeNcOC8uPBcf63dxLHWsnzFga
	KxyG+lU+25Lgix8AgDPNfsIGZMnaxIuYfHIKvASMUBav3dXMBV3OdLQQJIV6pfk9DfuaLSTnhp8/7
	b7u9XirtzJqMcAQZGsSCUSjpGBkY8epgMl5oTbIzX250AvvWDAKWPpL9bhRMx+Hu2VMv7Htz1MPT0
	OKc28KOil0tGlzw64iBnsiCgEes1mOHN+biz1GqGTfRTozClA8ey3+AZtTsKQH4TAOU5ohN+xEW0E
	NUo8zFo0VbTF6rvpc7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWbAz-0003F5-Rf; Mon, 18 Nov 2019 07:10:21 +0000
Received: from mail-ve1eur01on062d.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::62d]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWbAu-0002Kv-9Q
 for linux-rockchip@lists.infradead.org; Mon, 18 Nov 2019 07:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtuZyXcKA5SRIxsILFpCatF4ixwLGqi5570owm7z1KM=;
 b=pWp3KYFwae+9q7TT+8pKFFnrFfQI3fGLNwhEPVTmFPHj3YpStXKfVSbtDO0FOBP7KWJH8FtakqqYlXmIQhkmWak2eQai6/EoGconr4VDgDS8Hi2UmS6eOyaYMKpJuP/kmYlXOI2FNJ2OoNylSJ2kk/bWdAhB2qpDyvSdB9DjIM4=
Received: from VI1PR08CA0167.eurprd08.prod.outlook.com (2603:10a6:800:d1::21)
 by AM6PR08MB3944.eurprd08.prod.outlook.com (2603:10a6:20b:a1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23; Mon, 18 Nov
 2019 07:10:09 +0000
Received: from VE1EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by VI1PR08CA0167.outlook.office365.com
 (2603:10a6:800:d1::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23 via Frontend
 Transport; Mon, 18 Nov 2019 07:10:09 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT023.mail.protection.outlook.com (10.152.18.133) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23 via Frontend Transport; Mon, 18 Nov 2019 07:10:08 +0000
Received: ("Tessian outbound 0939a6bab6b1:v33");
 Mon, 18 Nov 2019 07:10:04 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 947c85fda77d0eee
X-CR-MTA-TID: 64aa7808
Received: from 498dd6388baf.2 (cr-mta-lb-1.cr-mta-net [104.47.2.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 99106DCD-027B-4BD8-B1C7-2624159E9292.1; 
 Mon, 18 Nov 2019 07:09:59 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01lp2055.outbound.protection.outlook.com [104.47.2.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 498dd6388baf.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 18 Nov 2019 07:09:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ht32QYjV6gNa0s3dg+LDahpv9MOsHQfaBS1QRsXZtd1X1CjvNa5ZFkgi7eI9RPW+Hkwws5BlurtRyJkV8vx5envygFRiugM+VJDdnwzXxf+Y3NNmj65gnmzd204PPplMZEhsJ4qYlR7Eot+8EiFTul25Pyo7bGL6WbUAd+dxgXyYfrJklZry9VFzPx0aKFMAPI3RxOKxwWw+VQk52kXjbso/bWhiubHHVVnITqRiZHmtyS9OwD8eQ6uetWKiraOe/Y+O8pNIm1eeNGMVfZ4vHhfdupHLs0ngIcbjEM/kpIAP7gqOf5p/PSmXl16D2urb5wJOkmGliKrSVSOj0QIJfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtuZyXcKA5SRIxsILFpCatF4ixwLGqi5570owm7z1KM=;
 b=BEQjVL2IwxmDEAolGqGmahsog/BDQ6UsNDvyyBqddD6+Mu8DULNXYYXKM3AD7tBDa8EVlWa9MLAP51Dxl0RKH9PU1wT3O1ogH2kOiu9BTsqDcp66H/+TKPQkabg9YZS3chUooaE7rx15zSLOi/bkv2o2jBLo4wm0QMqC6gmE5C4gQjtmtTkMnhHIqCOPoTrcV1CoLwt478LdAfb6CMdC8A0KpZPORn8q8H4U7CF+qF8khJDl5le5I5z6x8dvpjqJAWm8FyE9xuN2ktXhi5aVau/dVC/8nFNeLzsZD0fj4FPE6ziEL1fA7BPkr1SVpZ5sfu/64Ktnh/j19kaEqMqB3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtuZyXcKA5SRIxsILFpCatF4ixwLGqi5570owm7z1KM=;
 b=pWp3KYFwae+9q7TT+8pKFFnrFfQI3fGLNwhEPVTmFPHj3YpStXKfVSbtDO0FOBP7KWJH8FtakqqYlXmIQhkmWak2eQai6/EoGconr4VDgDS8Hi2UmS6eOyaYMKpJuP/kmYlXOI2FNJ2OoNylSJ2kk/bWdAhB2qpDyvSdB9DjIM4=
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com (10.255.159.31) by
 VE1PR08MB5023.eurprd08.prod.outlook.com (20.179.30.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.28; Mon, 18 Nov 2019 07:09:57 +0000
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7]) by VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7%6]) with mapi id 15.20.2451.029; Mon, 18 Nov 2019
 07:09:56 +0000
From: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Topic: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Index: AQHVk1z8xHY+gDfYy0i/iDKbshedr6eBdzAAgAbusQCAAKGHAIAA7isAgACLqoCABhZeAA==
Date: Mon, 18 Nov 2019 07:09:56 +0000
Message-ID: <20191118070949.GA27075@jamwan02-TSP300>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
 <20191108160954.GA17321@arm.com> <20191113020146.GB2746@jamwan02-TSP300>
 <20191113113954.GN23790@phenom.ffwll.local>
 <20191114015220.GA16456@jamwan02-TSP300>
 <CAKMK7uH06iu9OTz-1ZTbv6oVBHtBojSQE6sUu1GWfWk1om8LQQ@mail.gmail.com>
In-Reply-To: <CAKMK7uH06iu9OTz-1ZTbv6oVBHtBojSQE6sUu1GWfWk1om8LQQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: HK0PR03CA0097.apcprd03.prod.outlook.com
 (2603:1096:203:b0::13) To VE1PR08MB5006.eurprd08.prod.outlook.com
 (2603:10a6:803:113::31)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4995ef4d-5792-4d55-5350-08d76bf658ae
X-MS-TrafficTypeDiagnostic: VE1PR08MB5023:|VE1PR08MB5023:|AM6PR08MB3944:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB394483F66DAD91122101458BB34D0@AM6PR08MB3944.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0225B0D5BC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(396003)(136003)(346002)(366004)(39860400002)(53754006)(199004)(189003)(6506007)(386003)(102836004)(486006)(186003)(5660300002)(6436002)(446003)(6916009)(71190400001)(71200400001)(1076003)(6486002)(33656002)(476003)(6246003)(7736002)(6512007)(9686003)(587094005)(6306002)(66066001)(4326008)(53546011)(2906002)(33716001)(55236004)(256004)(305945005)(7416002)(14444005)(11346002)(478600001)(316002)(3846002)(6116002)(76176011)(52116002)(64756008)(66476007)(66556008)(229853002)(8676002)(66446008)(966005)(26005)(99286004)(14454004)(66946007)(81156014)(81166006)(86362001)(8936002)(54906003)(58126008)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB5023;
 H:VE1PR08MB5006.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: m0SfD/vR0RxWmTNEU0GNo5UPa6dRKogw0t27y+SBXz3y8CTqA4lOSp7dQLRJsimenay7Gdv3k7EnaAUTojrVdKwrIzTE2pHwaXsQkzoDe+qjIvFzZnYMpgGGmro5IcRmANbTGNYfZN9+omhkcYVIQwO8xNAP5rqrcA2dI351ZmTw+Zj2TWFox1JfjCe8RMJ4ng80ts6q1XYsYI6ml0t34aFQjuSgpS9oDf3hha98czhJQwTCmHXNV+nTpGsg83zfJ/qgO+8lQK4DCmLlWK23huoUYyb5wViLz5krM5cI02DlAHzG2kfXbIpJE3AalxXT6cCE8CLwkXfvbW1GgsqIBbngsm+HMAh4y1gs/GPMvyG1jwSQ6CV+D0N+K8FDO1sVx0pcUmtJEK8hsupYFR5pY4sxCexD5Q/AuFhXoqFAyeFFfKtJ4o4IQqS/XIrF0UAl
Content-ID: <51F1CC8578D54B4F9FDC3D2BABE5E83D@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5023
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT023.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(396003)(136003)(39860400002)(346002)(1110001)(339900001)(189003)(199004)(53754006)(33716001)(6862004)(2906002)(50466002)(6246003)(336012)(8676002)(81156014)(81166006)(356004)(3846002)(6116002)(76176011)(4326008)(7736002)(105606002)(26005)(22756006)(186003)(305945005)(386003)(6506007)(53546011)(14444005)(6306002)(9686003)(6512007)(102836004)(229853002)(6486002)(23756003)(1076003)(99286004)(54906003)(36906005)(316002)(8936002)(8746002)(33656002)(70586007)(25786009)(58126008)(70206006)(47776003)(66066001)(587094005)(126002)(476003)(486006)(11346002)(86362001)(446003)(26826003)(14454004)(966005)(5660300002)(76130400001)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3944;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5a765217-c78e-4f6a-bf12-08d76bf6512d
X-MS-Exchange-PUrlCount: 1
NoDisclaimer: True
X-Forefront-PRVS: 0225B0D5BC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MlsUXG96PpEXctprm5t4q8aCmLz9GJeGV2waAM5OXTFagtH7ZdtIWiUQKYMmM3rbuZNyb0N2jJxqOb0t+TSPK8DEzySQq0yb2PZc9L3sfvwpEKfwZUhtNHiq9moz7rUsB9UsbbegP9PMDaLzcScg65RM4/+KlBQoZHBvLm2ezte/vGO2y84o8d+lqUzinwW8BwGWLCZp2u4x/GsEZYh0LXA3VQdSTHKhuSSvqUFzgzfRbKbnd2FQiDr+D94BxtCd5GQpUbjqa5+pBFJYXcvLvuvw0pYtJUeYsVNB+hY43ZlMjDIbtscRtQBGh+CACAKJfZAQq1X9o1rODyTUMN/pkfKI7/wrgWV1ilvbwo6pB5GqFZfSKQluRnHyDOlNRsS3I015SZcBikyYfRfA1DfrvvckdHICshjN2looGp1LUwr14oo8pOaNrgAQ7hQAsPsOObfcB6dcOimLliENBZ0M60Ali891HVjwctOiTZpiQaA=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2019 07:10:08.8719 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4995ef4d-5792-4d55-5350-08d76bf658ae
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_231016_546734_16A41F7D 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nd <nd@arm.com>, Mihail Atanassov <Mihail.Atanassov@arm.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Ayan Halder <Ayan.Halder@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <Brian.Starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 11:12:13AM +0100, Daniel Vetter wrote:
> On Thu, Nov 14, 2019 at 2:52 AM james qian wang (Arm Technology China)
> <james.qian.wang@arm.com> wrote:
> > On Wed, Nov 13, 2019 at 12:39:54PM +0100, Daniel Vetter wrote:
> > > On Wed, Nov 13, 2019 at 02:01:53AM +0000, james qian wang (Arm Technology China) wrote:
> > > > On Fri, Nov 08, 2019 at 04:09:54PM +0000, Ayan Halder wrote:
> > > > > On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> > > > > > There are afbc helpers available.
> > > > > >
> > > > > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > > > > > ---
> > > > > >  .../arm/display/komeda/komeda_format_caps.h   |  1 -
> > > > > >  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
> > > > > >  2 files changed, 17 insertions(+), 28 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > index 32273cf18f7c..607eea80e60c 100644
> > > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > @@ -33,7 +33,6 @@
> > > > > >
> > > > > >  #define AFBC_TH_LAYOUT_ALIGNMENT       8
> > > > > >  #define AFBC_HEADER_SIZE               16
> > > > > > -#define AFBC_SUPERBLK_ALIGNMENT                128
> > > > > >  #define AFBC_SUPERBLK_PIXELS           256
> > > > > >  #define AFBC_BODY_START_ALIGNMENT      1024
> > > > > >  #define AFBC_TH_BODY_START_ALIGNMENT   4096
> > > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > index 1b01a625f40e..e9c87551a5b8 100644
> > > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > @@ -4,6 +4,7 @@
> > > > > >   * Author: James.Qian.Wang <james.qian.wang@arm.com>
> > > > > >   *
> > > > > >   */
> > > > > > +#include <drm/drm_afbc.h>
> > > > > >  #include <drm/drm_device.h>
> > > > > >  #include <drm/drm_fb_cma_helper.h>
> > > > > >  #include <drm/drm_gem.h>
> > > > > > @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > >         struct drm_framebuffer *fb = &kfb->base;
> > > > > >         const struct drm_format_info *info = fb->format;
> > > > > >         struct drm_gem_object *obj;
> > > > > > -       u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> > > > > > -       u64 min_size;
> > > > > > +       u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
> > > > > >
> > > > > >         obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
> > > > > >         if (!obj) {
> > > > > > @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > >                 return -ENOENT;
> > > > > >         }
> > > > > >
> > > > > > -       switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > > > -               alignment_w = 32;
> > > > > > -               alignment_h = 8;
> > > > > > -               break;
> > > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > > > -               alignment_w = 16;
> > > > > > -               alignment_h = 16;
> > > > > > -               break;
> > > > > > -       default:
> > > > > > -               WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> > > > > > -                    fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> > > > > > -               break;
> > > > > > +       if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> > > > > > +               return -EINVAL;
> > > > > > +
> > > > > > +       if ((alignment_w != 16 || alignment_h != 16) &&
> > > > > > +           (alignment_w != 32 || alignment_h != 8)) {
> > > > > > +               DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> > > > > > +                             alignment_w, alignment_h);
> > > > > > +
> > > > > > +               return -EINVAL;
> > > > > To be honest, the previous code looks much more readable
> > > > > >         }
> > > > > >
> > > > > >         /* tiled header afbc */
> > > > > > @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > >                 goto check_failed;
> > > > > >         }
> > > > > >
> > > > > > -       n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> > > > > > -       kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> > > > > > -                                   alignment_header);
> > > > > > -
> > > > > >         bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> > > > > > -       kfb->afbc_size = kfb->offset_payload + n_blocks *
> > > > > > -                        ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> > > > > > -                              AFBC_SUPERBLK_ALIGNMENT);
> > > > > > -       min_size = kfb->afbc_size + fb->offsets[0];
> > > > > > -       if (min_size > obj->size) {
> > > > > > -               DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> > > > > > -                             obj->size, min_size);
> > > > > We need kfb->offset_payload and kfb->afbc_size to set some registers
> > > > > in d71_layer_update(). At this moment I feel like punching myself for
> > > > > making the suggestion to consider abstracting some of the komeda's afbc
> > > > > checks. To me it does not look like komeda(in the current shape) can take
> > > > > much advantage of the generic _afbc_fb_check() function (as was suggested
> > > > > previously by Danvet).
> > > > >
> > > > > However, I will let james.qian.wang@arm.com,
> > > > > Mihail.Atanassov@arm.com, Ben.Davis@arm.com comment here to see if
> > > > > there could be a way of abstracting the afbc bits from komeda.
> > > > >
> > > >
> > > > Hi all:
> > > >
> > > > Since the current generic drm_afbc helpers only support afbc_1.1, but
> > > > komeda needs support both afbc1.1/1.2, so I think we can:
> > > > - Add afbc1.2 support to drm afbc helpers.
> > > > - for the afbc_payload_offset, can we add this member to
> > > >   drm_framebuffer ?
> > > > - The aligned_w/h are important for afbc, so can we have them in
> > > >   drm_framebuffer ?
> > >
> > > How expensive is it to recompute these from a struct drm_framebuffer?
> > >
> > > I'd just go with one function which computes all these derived values, and
> > > stuffs them into a struct drm_afbc. Then drivers call that once or so.
> > >
> >
> > A struct drm_afbc, good idea, I like it. :-)
> >
> > and we can compute it when do the afbc size check like
> >
> >   drm_afbc_check_fb_size(..., &komeda_fb->drm_afbc);
> 
> Discussed this also with Andrzej on irc on where exactly to place
> stuff. I think ideally we'd be able to get rid of the custom
> malidp_fb_create completely, and komeda should also be able to get rid
> of most of the open-coded checks (it's largely reinveting
> drm_gem_fb_create_with_funcs, imo better to just call that first, then
> then do a few more calls of the specific things you need to have
> computed in addition).
> -Daniel

The afbc support is the only reason why malidp/komeda define our own
fb_create(), it is good for komeda and malidp if we put afbc support
directly into the standard drm_gem_fb_create_with_funcs.

BTW:

can we add one more argument: fb_struct_size to

  drm_gem_fb_create_with_funcs(..., size_t fb_struct_size);

then driver can use it to extend its own fb struct and add some private
infos.

Thanks
James
> >
> > Thanks.
> > James
> >
> > > For reworking drm_framebuffer itself I think it's probably a bit too
> > > earlier. And if we do it, we should maybe go a bit more bold, aiming to
> > > property-fy all the framebuffer settings, maybe even making it extensible,
> > > and have drivers handle a corresponding drm_framebuffer_state.
> > >
> > > A third option would be to create a drm_afbc_framebuffer which embeds
> > > drm_framebuffer and which drivers would need to use. But also feels a bit
> > > like too much churn. Recomputing should be quick enough and much easier.
> > > -Daniel
> > >
> > > >
> > > > Thanks
> > > > James
> > > >
> > > > > Thanks anyways for taking a stab at this.
> > > > > -Ayan
> > > > > > +
> > > > > > +       if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> > > > > > +                                   mode_cmd->width, mode_cmd->height,
> > > > > > +                                   alignment_w, alignment_h,
> > > > > > +                                   obj->size, mode_cmd->offsets[0],
> > > > > > +                                   AFBC_SUPERBLK_ALIGNMENT))
> > > > > >                 goto check_failed;
> > > > > > -       }
> > > > > >
> > > > > >         fb->obj[0] = obj;
> > > > > >         return 0;
> > > > > > --
> > > > > > 2.17.1
> > >
> > > --
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > http://blog.ffwll.ch
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
