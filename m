Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022A7101DAA
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:35:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=341PQCiyMakiBwUrF+2gafNJwH+oIBwzf1YpFyZacvc=; b=aKHAZwxvJtSFti
	ugbvV7KPMwh+bSZtDjwbcVn95tYPeDjZG1etRxEWT6WQ7c0RkQ3XqzdQaU0Ei1FGBT6Qnj/dvJmOY
	qn+sKoTtspaVyH06SaG5HXrnY2lNrloE3QQ4PeECKqjuZVirgi27UBMAdrydLh2kPEvNF/MScxdfn
	0d87GiO3eHq3XCgvkqrCvMayftkKDKgbxj9zEJ7A5/AOFS2bv2Y/uK13mXOzjMinpuzmJ5h88hh07
	jWYqUT9z+Q6F4ctAJuhk+PBqkZEw5Jgf7zeOpQJQ1+hinZml5O40YV3ejNcyAzsSGgLQGQ48aejz2
	9wYsZUINDZtKz/4NgpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyyX-0005Es-Rn; Tue, 19 Nov 2019 08:35:05 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyyO-00050i-8c
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWIehMdMve7N0izP75wIaaQ2gW7/Ez/kbnbps4sNWpA=;
 b=7IG0Jb+ph/2kLbFhwSXYeD/NqjJgzoFJSPPTDQeFn3tah7FTQCx3Uxy8dQtWOdawNAmb1cNay1WhP+DK4v/IvfUCaN63d6HHNSN+EvReKec9fpbYv5a8GlW8tEl+88o2DUaantiA9g9Ayj5uJUpGHC3kLptox2r5nMy0P+09YTM=
Received: from VI1PR08CA0183.eurprd08.prod.outlook.com (2603:10a6:800:d2::13)
 by AM6PR08MB3623.eurprd08.prod.outlook.com (2603:10a6:20b:48::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.26; Tue, 19 Nov
 2019 08:34:49 +0000
Received: from AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::200) by VI1PR08CA0183.outlook.office365.com
 (2603:10a6:800:d2::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16 via Frontend
 Transport; Tue, 19 Nov 2019 08:34:49 +0000
Authentication-Results: spf=fail (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: Fail (protection.outlook.com: domain of arm.com does not
 designate 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT052.mail.protection.outlook.com (10.152.17.161) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23 via Frontend Transport; Tue, 19 Nov 2019 08:34:48 +0000
Received: ("Tessian outbound 081de437afc7:v33");
 Tue, 19 Nov 2019 08:34:44 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d72b29b253ac5b59
X-CR-MTA-TID: 64aa7808
Received: from a618b3432fe4.2 (cr-mta-lb-1.cr-mta-net [104.47.10.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D8EE5520-68A9-4A7A-9530-85BCDF4B7B4B.1; 
 Tue, 19 Nov 2019 08:34:39 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur03lp2051.outbound.protection.outlook.com [104.47.10.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a618b3432fe4.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 19 Nov 2019 08:34:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lz6Y9xXMC/lQ/8B8H+YT9FaqDOXBBSRoJgkwpJ0aFmaMFx3XmKyeio+3oIu0qSVi02iXgELZAQqd0TYhBIfLmK34+lAfmrfGSMD9cCiIamMEKJ6p6Yo7LhQXF65rWdQWT65Q0NaSwvPHLvlRfxtFJ4dHl9Ca/SHQNZTAgJxX1CDsi6m4JJukjved48uznxfY8gS3J71EFMZdd7j7plXA7+48AQMqomNlQvKSOiDvxPx1bHPCmfR//6/Cvbvabv4oGylgtfXhDZLNz11j/WITctVt3lJvIOXWGKCQD6Wa/Wey6H6t2Z4ZndaaQciO0Z+3CLBFQT9LeA7La+9BZAW1qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWIehMdMve7N0izP75wIaaQ2gW7/Ez/kbnbps4sNWpA=;
 b=NYVEYrillZtZBvDW60o/HBA9EDHQORbQcfW/97yJg6RUd+hqaJzzWaLZ6qL4SV67tHLt0SplAXS9TlYbFsrjjjb08+AT/qHQErm1WgU8DxuiWbdZoSTAmUItQhpwhvh6K3ICZe51wXERuA5k0oJW7+8YyIYM8kFEMmvsD8BGxYIZBf8caMyJnyMpWsOPFWGfVHvtkI/SOyWrCW374tL6yKBZmW993jZl5qxRIPSaagLYtkvYJ9axuG1CKC7rZnC8gMIZDFwHFsyFMtWLpcQlg+9WtC5PHe1q/XHHwvvFqhiePw2GlIOXLg9MWVWFv48pykMAYyQF0SaZ/VSLJmCJOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWIehMdMve7N0izP75wIaaQ2gW7/Ez/kbnbps4sNWpA=;
 b=7IG0Jb+ph/2kLbFhwSXYeD/NqjJgzoFJSPPTDQeFn3tah7FTQCx3Uxy8dQtWOdawNAmb1cNay1WhP+DK4v/IvfUCaN63d6HHNSN+EvReKec9fpbYv5a8GlW8tEl+88o2DUaantiA9g9Ayj5uJUpGHC3kLptox2r5nMy0P+09YTM=
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com (10.255.159.31) by
 VE1PR08MB4797.eurprd08.prod.outlook.com (10.255.112.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Tue, 19 Nov 2019 08:34:36 +0000
Received: from VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7]) by VE1PR08MB5006.eurprd08.prod.outlook.com
 ([fe80::a809:417a:faf3:61a7%6]) with mapi id 15.20.2451.031; Tue, 19 Nov 2019
 08:34:36 +0000
From: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Topic: [PATCHv2 3/4] drm/komeda: use afbc helpers
Thread-Index: AQHVk1z8xHY+gDfYy0i/iDKbshedr6eBdzAAgAbusQCAAKGHAIAA7isAgACLqoCABhZeAIAALTMAgAF8yYA=
Date: Tue, 19 Nov 2019 08:34:36 +0000
Message-ID: <20191119083429.GA2881@jamwan02-TSP300>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
 <20191108160954.GA17321@arm.com> <20191113020146.GB2746@jamwan02-TSP300>
 <20191113113954.GN23790@phenom.ffwll.local>
 <20191114015220.GA16456@jamwan02-TSP300>
 <CAKMK7uH06iu9OTz-1ZTbv6oVBHtBojSQE6sUu1GWfWk1om8LQQ@mail.gmail.com>
 <20191118070949.GA27075@jamwan02-TSP300>
 <20191118095136.GC23790@phenom.ffwll.local>
In-Reply-To: <20191118095136.GC23790@phenom.ffwll.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [113.29.88.7]
x-clientproxiedby: HK2PR0302CA0003.apcprd03.prod.outlook.com
 (2603:1096:202::13) To VE1PR08MB5006.eurprd08.prod.outlook.com
 (2603:10a6:803:113::31)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7ff37657-2f77-4f25-dd93-08d76ccb5704
X-MS-TrafficTypeDiagnostic: VE1PR08MB4797:|VE1PR08MB4797:|AM6PR08MB3623:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB3623D642DEAEB686B9DD6887B34C0@AM6PR08MB3623.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 022649CC2C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(53754006)(189003)(199004)(6246003)(6512007)(6306002)(66066001)(76176011)(52116002)(9686003)(6916009)(478600001)(81156014)(58126008)(33656002)(25786009)(6116002)(4326008)(8676002)(14454004)(316002)(587094005)(99286004)(6486002)(1076003)(3846002)(14444005)(256004)(6436002)(30864003)(102836004)(5660300002)(7416002)(66446008)(7736002)(86362001)(64756008)(66556008)(66476007)(26005)(55236004)(6506007)(54906003)(386003)(53546011)(186003)(229853002)(2906002)(8936002)(966005)(81166006)(446003)(71200400001)(71190400001)(305945005)(486006)(33716001)(66946007)(11346002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4797;
 H:VE1PR08MB5006.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 4DqEdtp0d00M/gKXofgIw/bRkmfLjQ8/tRZlfLSE8VSNg2D0RjNxbahlNqOgr02jY/1ujJXjoDoLL8doSDH0EuFvz9zNX0Pbi6c48XH1nYhUAem0aN8Jv1jXuVWPlhZV5LkxqpS49QrPquaxtDmAgqQcz7DLsYTBJICp7RZPDWd1lsat4a9FQ5CvDKKDPt0Gk670Ai+unkJTroXZCp2rP+Ht+OW2gt9xPwuIiIu5IUj7ARqjrXb2gopz/HyJ6OrWU7N5RT9kokxlXx7iuUMoXqhpoCmHjs3fWOLMRUV+B7o7TBSi8xPbwCGV/hgoveGyM6Np8KWABxFbGD4NSv3i0aGgEEbIVqu43+hSuNfiwJwvJ2d5iEO409y5CMptEnyTzM86pimg63l1vpPzCtZywCeSBC3d/eGk5QYiIxNrnC7Y+V7FIyfSSCYVk3ekFeHN1DYx3cAMq5Vsj9w2JdKcCxSO+gsYiAH9v0kuqkyL1dU=
Content-ID: <205D95BD016D564090D9ED0429C1BAF5@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4797
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=james.qian.wang@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT052.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(346002)(136003)(376002)(396003)(39860400002)(1110001)(339900001)(189003)(199004)(53754006)(14444005)(105606002)(26826003)(478600001)(99286004)(2906002)(966005)(25786009)(81166006)(8936002)(229853002)(186003)(126002)(86362001)(8676002)(476003)(81156014)(486006)(356004)(8746002)(58126008)(36906005)(316002)(50466002)(54906003)(22756006)(14454004)(23756003)(3846002)(6116002)(102836004)(76176011)(66066001)(53546011)(386003)(6506007)(30864003)(70586007)(76130400001)(5660300002)(33716001)(26005)(47776003)(70206006)(6862004)(9686003)(305945005)(6246003)(11346002)(446003)(6486002)(4326008)(336012)(1076003)(587094005)(6512007)(6306002)(33656002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3623;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Fail; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4e754c4c-246a-49b6-6421-08d76ccb4f1f
NoDisclaimer: True
X-Forefront-PRVS: 022649CC2C
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NA8PIEV1VqMiZQt/TFzNm2Bwz5tYG0DlDBG+WhCCfspeQ1A/Ob7ZJWtVSk7jWR3Hl718R5ikbuSR6gbu93Y2CBMMd9DUzlHn0prmnNmGM6q+ZKNHJ8ghF5ma5q+OEh6H8BUlmYW3LkdyfhBoJyT81Cb56t5p5SDz0lK8LWjszX2rdHMcDPTxGin3vrj/OXf40sYi/hFePgM0j1cfOStH/fZicC0Dy9/6nuJMKViXn9NQN3uURNkgeTx7SiNafRYE/G3X17hjiI9woP88CQMjU+/MygD4HrRdP2WydPE+/Zs+D3q34DJt7kM2OijpCyQ1R8OeMUgXMwYlM0m0cD3gBnhRX0noT9rmT+UbUWB0ymRt5wD7N76jjeGkVcGcughcL5iA1713IHnozkakTTPg5uFBXMj5bJwnTrqMIMNOv5JEitCC07Vbu6kH68z4oTArdNqhcT7Tohsk/KVLARXw5y9zqWGEybTiBPmmSlx1RiY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2019 08:34:48.9751 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ff37657-2f77-4f25-dd93-08d76ccb5704
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3623
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_003456_551163_EA829E22 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Mon, Nov 18, 2019 at 10:51:36AM +0100, Daniel Vetter wrote:
> On Mon, Nov 18, 2019 at 07:09:56AM +0000, james qian wang (Arm Technology China) wrote:
> > On Thu, Nov 14, 2019 at 11:12:13AM +0100, Daniel Vetter wrote:
> > > On Thu, Nov 14, 2019 at 2:52 AM james qian wang (Arm Technology China)
> > > <james.qian.wang@arm.com> wrote:
> > > > On Wed, Nov 13, 2019 at 12:39:54PM +0100, Daniel Vetter wrote:
> > > > > On Wed, Nov 13, 2019 at 02:01:53AM +0000, james qian wang (Arm Technology China) wrote:
> > > > > > On Fri, Nov 08, 2019 at 04:09:54PM +0000, Ayan Halder wrote:
> > > > > > > On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> > > > > > > > There are afbc helpers available.
> > > > > > > >
> > > > > > > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > > > > > > > ---
> > > > > > > >  .../arm/display/komeda/komeda_format_caps.h   |  1 -
> > > > > > > >  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
> > > > > > > >  2 files changed, 17 insertions(+), 28 deletions(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > > > index 32273cf18f7c..607eea80e60c 100644
> > > > > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > > > @@ -33,7 +33,6 @@
> > > > > > > >
> > > > > > > >  #define AFBC_TH_LAYOUT_ALIGNMENT       8
> > > > > > > >  #define AFBC_HEADER_SIZE               16
> > > > > > > > -#define AFBC_SUPERBLK_ALIGNMENT                128
> > > > > > > >  #define AFBC_SUPERBLK_PIXELS           256
> > > > > > > >  #define AFBC_BODY_START_ALIGNMENT      1024
> > > > > > > >  #define AFBC_TH_BODY_START_ALIGNMENT   4096
> > > > > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > > > index 1b01a625f40e..e9c87551a5b8 100644
> > > > > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > > > @@ -4,6 +4,7 @@
> > > > > > > >   * Author: James.Qian.Wang <james.qian.wang@arm.com>
> > > > > > > >   *
> > > > > > > >   */
> > > > > > > > +#include <drm/drm_afbc.h>
> > > > > > > >  #include <drm/drm_device.h>
> > > > > > > >  #include <drm/drm_fb_cma_helper.h>
> > > > > > > >  #include <drm/drm_gem.h>
> > > > > > > > @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > > > >         struct drm_framebuffer *fb = &kfb->base;
> > > > > > > >         const struct drm_format_info *info = fb->format;
> > > > > > > >         struct drm_gem_object *obj;
> > > > > > > > -       u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> > > > > > > > -       u64 min_size;
> > > > > > > > +       u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
> > > > > > > >
> > > > > > > >         obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
> > > > > > > >         if (!obj) {
> > > > > > > > @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > > > >                 return -ENOENT;
> > > > > > > >         }
> > > > > > > >
> > > > > > > > -       switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > > > > > -               alignment_w = 32;
> > > > > > > > -               alignment_h = 8;
> > > > > > > > -               break;
> > > > > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > > > > > -               alignment_w = 16;
> > > > > > > > -               alignment_h = 16;
> > > > > > > > -               break;
> > > > > > > > -       default:
> > > > > > > > -               WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> > > > > > > > -                    fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> > > > > > > > -               break;
> > > > > > > > +       if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> > > > > > > > +               return -EINVAL;
> > > > > > > > +
> > > > > > > > +       if ((alignment_w != 16 || alignment_h != 16) &&
> > > > > > > > +           (alignment_w != 32 || alignment_h != 8)) {
> > > > > > > > +               DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> > > > > > > > +                             alignment_w, alignment_h);
> > > > > > > > +
> > > > > > > > +               return -EINVAL;
> > > > > > > To be honest, the previous code looks much more readable
> > > > > > > >         }
> > > > > > > >
> > > > > > > >         /* tiled header afbc */
> > > > > > > > @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > > > >                 goto check_failed;
> > > > > > > >         }
> > > > > > > >
> > > > > > > > -       n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> > > > > > > > -       kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> > > > > > > > -                                   alignment_header);
> > > > > > > > -
> > > > > > > >         bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> > > > > > > > -       kfb->afbc_size = kfb->offset_payload + n_blocks *
> > > > > > > > -                        ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> > > > > > > > -                              AFBC_SUPERBLK_ALIGNMENT);
> > > > > > > > -       min_size = kfb->afbc_size + fb->offsets[0];
> > > > > > > > -       if (min_size > obj->size) {
> > > > > > > > -               DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> > > > > > > > -                             obj->size, min_size);
> > > > > > > We need kfb->offset_payload and kfb->afbc_size to set some registers
> > > > > > > in d71_layer_update(). At this moment I feel like punching myself for
> > > > > > > making the suggestion to consider abstracting some of the komeda's afbc
> > > > > > > checks. To me it does not look like komeda(in the current shape) can take
> > > > > > > much advantage of the generic _afbc_fb_check() function (as was suggested
> > > > > > > previously by Danvet).
> > > > > > >
> > > > > > > However, I will let james.qian.wang@arm.com,
> > > > > > > Mihail.Atanassov@arm.com, Ben.Davis@arm.com comment here to see if
> > > > > > > there could be a way of abstracting the afbc bits from komeda.
> > > > > > >
> > > > > >
> > > > > > Hi all:
> > > > > >
> > > > > > Since the current generic drm_afbc helpers only support afbc_1.1, but
> > > > > > komeda needs support both afbc1.1/1.2, so I think we can:
> > > > > > - Add afbc1.2 support to drm afbc helpers.
> > > > > > - for the afbc_payload_offset, can we add this member to
> > > > > >   drm_framebuffer ?
> > > > > > - The aligned_w/h are important for afbc, so can we have them in
> > > > > >   drm_framebuffer ?
> > > > >
> > > > > How expensive is it to recompute these from a struct drm_framebuffer?
> > > > >
> > > > > I'd just go with one function which computes all these derived values, and
> > > > > stuffs them into a struct drm_afbc. Then drivers call that once or so.
> > > > >
> > > >
> > > > A struct drm_afbc, good idea, I like it. :-)
> > > >
> > > > and we can compute it when do the afbc size check like
> > > >
> > > >   drm_afbc_check_fb_size(..., &komeda_fb->drm_afbc);
> > > 
> > > Discussed this also with Andrzej on irc on where exactly to place
> > > stuff. I think ideally we'd be able to get rid of the custom
> > > malidp_fb_create completely, and komeda should also be able to get rid
> > > of most of the open-coded checks (it's largely reinveting
> > > drm_gem_fb_create_with_funcs, imo better to just call that first, then
> > > then do a few more calls of the specific things you need to have
> > > computed in addition).
> > > -Daniel
> > 
> > The afbc support is the only reason why malidp/komeda define our own
> > fb_create(), it is good for komeda and malidp if we put afbc support
> > directly into the standard drm_gem_fb_create_with_funcs.
> > 
> > BTW:
> > 
> > can we add one more argument: fb_struct_size to
> > 
> >   drm_gem_fb_create_with_funcs(..., size_t fb_struct_size);
> > 
> > then driver can use it to extend its own fb struct and add some private
> > infos.
> 
> Hm, this isn't how we usually do it for subclassing - the trouble with
> this is that the size of the allocation is very far away from where we
> actually allocate, automated checkers have a harder time with this
> pattern.
> 
> Usually what we do is split the kzalloc out from the _create function,
> leaving just _init behind. Then you have roughly (pseudo-code):
> 
> 	drm_gem_fb_create_with_funcs(args) {
> 		struct drm_gem_fb *fb;
> 
> 		fb = kzalloc(sizeof(*fb));
> 		if (!fb)
> 			return -ENOMEM;
> 
> 		return drm_gem_fb_init_with_functions(fb, args);
> 	}
> 
> If you then need a bigger function, you just allocate that bigger
> function, and pass &fb->base to the _init function. Costs 3 additional
> lines (for the kzalloc and error checking), but easier to read&verify for
> both humans and compilers.
> 
> I guess what we could then do is create a drm_gem_afbc_create function
> which sets this all up for a
> 
> struct drm_gem_afbc_framebuffer {
> 	struct drm_gem_framebuffer base;
> 	/* afbc stuff */
> };
> 
> and then also fills out all derived afbc values, so more than just
> calling drm_gem_fb_init_with_functions. And drivers could still have their
> own version with even more checks on top.
> 
> And all afbc supporting drivers could then use that. Feels a bit like
> overengineering to me, but if you feel like that's justified to do it's a
> good solution.

Hi Daniel:

This solution looks good, it can fit all our requirement.

Thanks
James.

> Cheers, Daniel
> > 
> > Thanks
> > James
> > > >
> > > > Thanks.
> > > > James
> > > >
> > > > > For reworking drm_framebuffer itself I think it's probably a bit too
> > > > > earlier. And if we do it, we should maybe go a bit more bold, aiming to
> > > > > property-fy all the framebuffer settings, maybe even making it extensible,
> > > > > and have drivers handle a corresponding drm_framebuffer_state.
> > > > >
> > > > > A third option would be to create a drm_afbc_framebuffer which embeds
> > > > > drm_framebuffer and which drivers would need to use. But also feels a bit
> > > > > like too much churn. Recomputing should be quick enough and much easier.
> > > > > -Daniel
> > > > >
> > > > > >
> > > > > > Thanks
> > > > > > James
> > > > > >
> > > > > > > Thanks anyways for taking a stab at this.
> > > > > > > -Ayan
> > > > > > > > +
> > > > > > > > +       if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> > > > > > > > +                                   mode_cmd->width, mode_cmd->height,
> > > > > > > > +                                   alignment_w, alignment_h,
> > > > > > > > +                                   obj->size, mode_cmd->offsets[0],
> > > > > > > > +                                   AFBC_SUPERBLK_ALIGNMENT))
> > > > > > > >                 goto check_failed;
> > > > > > > > -       }
> > > > > > > >
> > > > > > > >         fb->obj[0] = obj;
> > > > > > > >         return 0;
> > > > > > > > --
> > > > > > > > 2.17.1
> > > > >
> > > > > --
> > > > > Daniel Vetter
> > > > > Software Engineer, Intel Corporation
> > > > > http://blog.ffwll.ch
> > > 
> > > 
> > > 
> > > -- 
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > +41 (0) 79 365 57 48 - http://blog.ffwll.ch
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
