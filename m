Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D33F1DB0DC
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 13:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AQ4dNtPNJNpQ4xueGXsEg3gpuLSyQXCa90rF9eI8c5E=; b=Jrghm48bJW3vTKmDycuWWvj5HZ
	qwyGDAnwA/f1ESU8jNj8YxnT6Xp6zkLq7PgvsEXukwW2CH0efMYcVLYqrgrayXPAlxYev1Pvh3ODE
	riphKPP3SYzdJocWDB1XlsuB0677Nl9gMulZ7bjTUiTDkKHaH2tfiseDnMWrMfVZZFKxxwgGZ6vHC
	whOmy8ZxidyBhACGzIN8/M6GryMz77v13LNR+eqojo0IJw009zaX3S+j3PSV5vqhbslzCzQ8pjX+k
	0eJMmzi2iaHiNI2jOHGprU5Lw6bGFsE7sFlucKT35tV2k5k1Ddi0QNGxhDgv5AhXq1uoDNoNbx0GJ
	tG75hj0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMSr-0003Rz-2n; Wed, 20 May 2020 11:00:45 +0000
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLH0-0008C0-6U
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 09:44:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wq3fGbXQnlCgZfRGQW9j4EiginBoGWFfz6iGWvpy+2cD2BulsovKGiPeUjFEU5HUfRi8KWPAFl7LoDHnor+EaCSvS4EW00k3D0/m48EjAAjR/I8nVyjDvZnkQ0G4OyG4+aAYimG/1t8NZHDpQCm6i7JcQ34tV7N/dxUao+xK1qYOeLQlcQpdFicDQ7HkDnMtjesdE1tt6CMDgnjURTC+lRNsRCyEZTKRD6VpIMX0q7AmPRSqv23CLFHuNoeVgU1br+po5gqM12r8obV8DOZt6MMGPskEI/iy2AZTeJygE1mwX2pgMO0rbroU2/X75rq9CrRhsgoVgeDhJjQf3RLUhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YhpIo5IXICZCc49okWGO7vquKEaBVysIZkHXiyNK3SI=;
 b=B+QNYldStZYn5NJhKzSWtpi3Locg86nRdYr+HEr0G6j6jNxr3GW2MjJJQ4rBs5HY7rLA2qZpqC2dSYKen0ygYji3z28/fb2jIzWjDfacoLE5mtdJf9EyfSF7yBsxdnta1s3vY0L859+lI3gL+icnOcDg7JRQWwQHILiNJl44trTHfZbI1/pAeUvd6LILduAR1o82AoJ524UEums51y/ihN/bhLlqXZ5rMR77R0tH4aKCsTs6vMm15tzzNmBZGlHwb1AyVCIqlBJ6Flj998mqMJQBejgLaX89kh08cnGSBRjlz895W2fYYHYjb6vLgsnd+zbkFVCLmq6V06yUmDzPmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nextfour.com; dmarc=pass action=none header.from=nextfour.com;
 dkim=pass header.d=nextfour.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NextfourGroupOy.onmicrosoft.com;
 s=selector2-NextfourGroupOy-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YhpIo5IXICZCc49okWGO7vquKEaBVysIZkHXiyNK3SI=;
 b=QT5FsSea6nEwF4HFDTSyNI5O4BO9DDQs5KULJLep1Vyn0gMWHkXmqtEZgyWIaK0OGWRTIkIKKBvl41gEzK1mOJlPkEkjOv4556a8D7uiMy+DuedOhmrspGofnzrxnNKaGHQwts+ZlZFN82WZb88T9r/Wzy/O8hklrtBLaQxbsfg=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nextfour.com;
Received: from HE1PR0302MB2682.eurprd03.prod.outlook.com (2603:10a6:3:f5::14)
 by HE1PR0302MB2652.eurprd03.prod.outlook.com (2603:10a6:3:e9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Wed, 20 May
 2020 09:44:20 +0000
Received: from HE1PR0302MB2682.eurprd03.prod.outlook.com
 ([fe80::b10a:8b9d:1a18:6b2]) by HE1PR0302MB2682.eurprd03.prod.outlook.com
 ([fe80::b10a:8b9d:1a18:6b2%9]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 09:44:20 +0000
To: Johannes Berg <johannes.berg@intel.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>
From: =?UTF-8?Q?Mika_Penttil=c3=a4?= <mika.penttila@nextfour.com>
Subject: iwlwifi firmware loading problems, rk3399
Message-ID: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
Date: Wed, 20 May 2020 12:44:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
Content-Language: en-US
X-ClientProxiedBy: HE1PR05CA0235.eurprd05.prod.outlook.com
 (2603:10a6:3:fb::11) To HE1PR0302MB2682.eurprd03.prod.outlook.com
 (2603:10a6:3:f5::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.10.99.2] (194.157.170.35) by
 HE1PR05CA0235.eurprd05.prod.outlook.com (2603:10a6:3:fb::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Wed, 20 May 2020 09:44:20 +0000
X-Originating-IP: [194.157.170.35]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 297a1b3a-eab8-4942-37aa-08d7fca25ef7
X-MS-TrafficTypeDiagnostic: HE1PR0302MB2652:
X-Microsoft-Antispam-PRVS: <HE1PR0302MB26525B5FBD492F5BE13855D283B60@HE1PR0302MB2652.eurprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y9TSfaRDviHYV6RRrBOEmLFwlOUpjoE8lyguXUjedKqnEX2qEgknc5gcZoXE9h21MzbxWudwtM9g3Dm57k5y5+ZqkXtoaA5CI4b/fzbr6G2ioSequxeHP7Ic0sf9FKxoqRIyQHCo73KmyoO120qFOW9qHByfg6HqkPGLjIK/3stbcUQUpIzxeuv/w7kxP57w//V2dJB75xsZFJ3qjUxBibfecdpYbZRz1xeFrL7cH+jgOhpqx3XGEFyvCKeV2EChv1x2pDWoj3Jbu1CP2aiuKM3x3g7noieCzS4tI0+yFMCiFfh8wN8jLAXPYJdN24NMJYfTuSZ4fkgmLFaoEsVDJzIv0nmdULITA00elzDn8JpZKNrNx1vfUmtsWJmZaxzlIFFUQx4Wuu2GzIaEQlB6+n2x46cYG+lsZdscPHsX33TktKyTtT8O8B2HiWkQ5brgj8p37T8mxXpfNv+nzr5PnOSteG+XbXNTwXlQQu6eW9d23m+9jLqAI62xPhFqNW6R
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0302MB2682.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(136003)(346002)(396003)(376002)(366004)(31696002)(8676002)(2616005)(956004)(52116002)(6486002)(316002)(86362001)(16576012)(110136005)(2906002)(8936002)(66556008)(31686004)(186003)(4744005)(66946007)(16526019)(26005)(508600001)(66476007)(4326008)(5660300002)(36756003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: XG1O4KTqhPk3gW2Mdo+Z1E09CIc1vdTalMcMCa2kYKgvjIsak8rW+xYHHjovZqPYK0G3K1TXj3H6bRhIX9GE0IhWy9+sW03i7yz2QsniyN1Fpm5BEfsZZC7zT5vpAYmnux7FoY0u0XI0um6GhWIoVaCPqi4TT6XuP1c8q6djqYJzQxjZY6/P3lykHXIOkkgxthpgRtwWRgoA+ZugGiw0KhrM42xCsU+JugCKCRb4QaAdZjvd7nVZpTULJWg9mnlzl5S2zKTFEr+kvGB8Ycvx6mK7uBRl87Ewn5M5tu0lEqF9EdFJsgsCcMr8pQZyogPaGzvfBHn0AUDEP7DBR3u3godxYXViBM7NVbr/Yo9YGSc/Au/8eu3Ywt24ThduSiVDUYi1Xn+D/fvzbk6rGthnV+IDHsdLepoNEbmwiAKZ83T25cpXnb32en/5RMcTdE8a9R7iC4XI5VCRz1pliCvRUu3S0FELzsAhNWccJfvkZinjUgM508O2PvsR3FFBJT5V
X-OriginatorOrg: nextfour.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 297a1b3a-eab8-4942-37aa-08d7fca25ef7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 09:44:20.6994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 972e95c2-9290-4a02-8705-4014700ea294
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SsfbVDY0iMzNNon98Zhx9pS1lPZ95wrGp5J9YzJUPW58yYvxNkKCkGgoLOCHaS79a2YJIyV31mSj3TgScFg7fV4srjL8ySHdX+Xyzq0rSf8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0302MB2652
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_024427_019559_B18D5089 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-rockchip@lists.infradead.org, linux-wireless@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpXZSBoYXZlIGN1c3RvbSBtYWRlLCBSb2NrY2hpcCByazMzOTkgYmFzZWQgYm9hcmQgd2l0
aCBhIHN0YW5kYXJkIE0uMiAKc29ja2V0IGZvciB3aWZpL2J0IGNhcmQuCgpXZSBoYXZlIHRyaWVk
IG1hbiBkaWZmZXJlbnQgY2FyZHMsIGxpa2UgSW50ZWwgOTI2MCBhbmQgSW50ZWwgQVgyMDAsIGJ1
dCAKYXJlIGV4cGVyaWVuY2luZyBwcm9ibGVtcyB3aGlsZSBsb2FkaW5nIHRoZSBmaXJtd2FyZS4K
CiDCoCBGYWlsZWQgdG8gbG9hZCBmaXJtd2FyZSBjaHVuayEKCmV0Yy4gSSBoYXZlIGEgbGl0dGxl
IGRlYnVnZ2VkIGFuZCB0aGUgcHJvYmxlbSBzZWVtcyB0aGF0IHRoZSBpbnRlcnJ1cHRzIAp0aGF0
IGFja25vd2xlZGdlcyB0aGUgbG9hZCB0byBwcm9jZWVkLCBpcyBub3QgY29taW5nLCByYW5kb21s
eS4KSSBoYXZlIHRyaWVkIG1hbnkgZmlybXdhcmVzLiBEbyB5b3UgaGF2ZSBhbnkgcG9pbnRlcnMg
d2hlcmUgdG8gbG9vayBuZXh0PwoKVGhhbmtzLApNaWthCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
