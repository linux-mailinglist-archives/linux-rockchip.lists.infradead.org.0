Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FCC1DB39F
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 14:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yVUORMmFIuLKHhqinlEDV6yy/YdfEQUhRKaVU1vKWoY=; b=lSX7YolNhsVv7VIUwO1GCo84x
	tx7wzMWdg4GeiKiGHCkq08eXpayXMRRNf05U6LTSukNCABRahbJ6UP3WXSL3uCW4MnRzaeBucxnk+
	s/gz2AU1jOk+pyW4T14aegz809fHNZLAgjGt9DVElY8ghKOw6ruYzusJaaQKsXU7bIiThqI4fZvbI
	RR93z+9mKqWDnB0lg4F/fKioTdaMhXE4wVsN24xeM9+aZJZb/Nmo7+ATbrsM02ONkaWs7gmydQOji
	60sHcWTnLh46Bzg1sA93evknryv04SNRBcGS0Y+ZuyP4liFbAihAgJqfuc7cFp8/QOWt+++6Y8fp0
	IySHouq6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNww-0003e0-NY; Wed, 20 May 2020 12:35:54 +0000
Received: from mail-eopbgr00052.outbound.protection.outlook.com ([40.107.0.52]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNvQ-0008U9-VG
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 12:34:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/uvQP0eTNTzFOKi/iOmilUhOvaS+p0hd06D9gS7GVypsaynqEodcY4cyNl7Mlv/wHJksaF7sfQA3nFyK2zr7zGqXrK/woSuRXd51XWfkZmuevxQpY3mJ1xGoxhNWlL2/uKRfUpRP9OyjVCCJO2L4z2PbIQydIjuMl/isb/e+3+tRTvpROlkf/CiVtwAZz+lkjseRHaFqSXBUovu7pqqt3wu78bIk3zV6Y3YI6ity6QQ1EwkVpzJ2c2HEBIZtWlNn8narZshvw/GhgBZsjwzVvjXauTzlg6bZ6cs50HKuHfW1Ws/QgIt6NBkRaqyNkp+6nIIMmpHsj9/9EB61Y3o1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dwcw2LZLxPUaQlzYwAfs3RLrHsPVs/EJGVLMUyXTwWQ=;
 b=dPrUhTRJ+CFCRJm9Eo2bedsMbRnyB4a6hANSLLegpdnKwXmWZwimE+5c+BNTr5tnaf4wefoTgk5WY54ETf2j2W9/cxG89Dp7wYurChIJbz6wAQrjn1g4vuxDciwXlgbTNSNna98gA21p/KZUCI6LiDJ6uro2QbrmnGZuxG/mmLKkitZ0s9j7LkT1rL4KChDvoQNhZ+YHDBoN8BuCp/VjawHrrC/ximndO2qWZHWx3/5fOK8EsWEjb3C7ifspA40VHW+tUDufkjZWzeUZc7dJmK9f70JmLgbkKMfWcIAHitgy6442cI5gTPVIzL7egbTJLgwZHABLyVwbe2ILX7XdMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nextfour.com; dmarc=pass action=none header.from=nextfour.com;
 dkim=pass header.d=nextfour.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NextfourGroupOy.onmicrosoft.com;
 s=selector2-NextfourGroupOy-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dwcw2LZLxPUaQlzYwAfs3RLrHsPVs/EJGVLMUyXTwWQ=;
 b=FezFiVesSjGsdUrc94LEhB0qeI3Q9rTL4X2Ra/790dyzOWfmdLUNfvAiRfGcSXytKefOgXsGquSrMhsQZQWw0OaHIHtuZ989Rdr2Av5ZG0bXIUg3qRMb/zlCWpYkCFV78g4DDDg7eTVg8EHg49gUQUIk+Qub9mg2d9BnVQMgd6Q=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nextfour.com;
Received: from HE1PR0302MB2682.eurprd03.prod.outlook.com (2603:10a6:3:f5::14)
 by HE1PR0302MB2793.eurprd03.prod.outlook.com (2603:10a6:3:ef::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Wed, 20 May
 2020 12:34:17 +0000
Received: from HE1PR0302MB2682.eurprd03.prod.outlook.com
 ([fe80::b10a:8b9d:1a18:6b2]) by HE1PR0302MB2682.eurprd03.prod.outlook.com
 ([fe80::b10a:8b9d:1a18:6b2%9]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 12:34:16 +0000
Subject: Re: iwlwifi firmware loading problems, rk3399
To: Emmanuel Grumbach <egrumbach@gmail.com>
References: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
 <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA@mail.gmail.com>
From: =?UTF-8?Q?Mika_Penttil=c3=a4?= <mika.penttila@nextfour.com>
Message-ID: <f27e0e85-6e45-15bd-1460-4140671ee4cd@nextfour.com>
Date: Wed, 20 May 2020 15:34:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: HE1PR05CA0334.eurprd05.prod.outlook.com
 (2603:10a6:7:92::29) To HE1PR0302MB2682.eurprd03.prod.outlook.com
 (2603:10a6:3:f5::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.10.99.2] (194.157.170.35) by
 HE1PR05CA0334.eurprd05.prod.outlook.com (2603:10a6:7:92::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Wed, 20 May 2020 12:34:15 +0000
X-Originating-IP: [194.157.170.35]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29c9aee3-9a55-4ca3-abdc-08d7fcba1bea
X-MS-TrafficTypeDiagnostic: HE1PR0302MB2793:
X-Microsoft-Antispam-PRVS: <HE1PR0302MB279338BC888056E11004485C83B60@HE1PR0302MB2793.eurprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B1h06TOzdypwIodb7GimPhcclPm4VnChpyp1n8jZ7bHiaqBAJEw06KHxOIjoid4/qiIW2ZH+UONhBt+goAXg3Eb9mWjjNnfjjMg6EbSuvyy6R2KwjhkCwQLVNnonsz+uWR0m+o9wvIB8Lz2GI8eSzFmZuU/q+NhM1fhU0aRwIPIpSZAH8H1t/HgJCQLV2jDw9tNEu5mRYqvL/xx+Ule0W9A4oa8dGhxVJ4TOkXnKmIzrFMtn9SzXNm3Et4oE5/Puzz3WtsYL8+qcma4airGRjQ0aixNpxoUg4zQzxZ+7PNrxkpOct/tfoVrWXNGkGMSRvmUqY0XYksTlykrtNpw/rQvedKDLQ6jvR6o7S9us+t2WghrMEj1WiUKmYHB3lPbk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0302MB2682.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(136003)(376002)(396003)(366004)(346002)(5660300002)(66556008)(66476007)(66946007)(52116002)(86362001)(4326008)(508600001)(956004)(2616005)(31686004)(6916009)(26005)(2906002)(16526019)(8676002)(4744005)(186003)(16576012)(6486002)(54906003)(31696002)(36756003)(8936002)(316002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: dA1zodGKvZzV0cZNRY+ucBTuIAfVidd56S00MLqoAwa0gttq1CWc134H7/pt0kqbjhncbxV13AwK2wpDO9xfuK1lwxYe3OFoG1whPyz4d5uRxltEgju4jzLbMKWR8uomMuuck39xQQ0OMgwjHHlNwX0D+umkclmipJHTn7B1c1tw+rzEqJxR0IMa2xYCB9ZDYIpoi3Q7rJ/0o4tyCTf7yRSJSHcrLEYlgb1OjisXHxcK89Y/7WSNH4i6DG3tDu8ZqqV0v5vYPcZamjNJ11jq3wP2vpn1JVS2tUV5jVSt7Ea90dNGjV/Is/lvfaoxGWS7uC7BgkD4ZK9NNX5/eIB3HbUM0BDPJhlGsPzvnsejfuV3/ydGp5fVieZUnZAz1N+Y20nO7R4BIHazjXdrhQzTLBLkk22TOIHVOgZGsZFcgkP43iH2/cIh+Nmnn789Z1YZpHobmQeGoiEpVCo88aCPkG8IU8c/cduuzM/apIlaxWXd95OzRr1q9YhZHpJ7+3sc
X-OriginatorOrg: nextfour.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29c9aee3-9a55-4ca3-abdc-08d7fcba1bea
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 12:34:16.0354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 972e95c2-9290-4a02-8705-4014700ea294
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XpQOSTuvU9e/kyjgB26cXr7zPg+VINdCOSOftZWIUxNgIuGcbpoGzvx/mFyDnt8VTu3jQg75ACZ0l1GR+c/grktowMHpO42PyulPQDYsyeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0302MB2793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053421_080435_74615902 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.52 listed in wl.mailspike.net]
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
Cc: linux-rockchip@lists.infradead.org,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes.berg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 20.5.2020 15.27, Emmanuel Grumbach wrote:
>> Hi,
>>
>> We have custom made, Rockchip rk3399 based board with a standard M.2
>> socket for wifi/bt card.
>>
>> We have tried man different cards, like Intel 9260 and Intel AX200, but
>> are experiencing problems while loading the firmware.
>>
>>     Failed to load firmware chunk!
>>
>> etc. I have a little debugged and the problem seems that the interrupts
>> that acknowledges the load to proceed, is not coming, randomly.
>> I have tried many firmwares. Do you have any pointers where to look next?
> I guess you need to debug your board :)
> The interrupt is not coming, then.. there isn't much the driver can do.

Well it does get interrupts, but stops getting them during fw loading at 
some point which causes it to fail. I have seen similar posts while 
googling and they are happening on x86/ubuntu and popular platforms. So 
I'm afraid it is something with iwlwifi or its usage of MSIX or such. 
The kernel version is 5.4.

>> Thanks,
>> Mika
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
