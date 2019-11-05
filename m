Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F45EF346
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 Nov 2019 03:11:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tV/DKeZrThtNT8xcn1+nYkYqp9oHuIQAl3I9SyMOnfg=; b=oWacf+f4zfcGaM
	iQVzJINHhnqNbxWXbCs2V2FQMDawkmRPAU5EnOqp3Vi2y/wz027CbHym05WU74qNTK9kHl/4TPn39
	JJEu+SNV09Wc0wr34k6sTXS5HIrgwMQ6pf7RcEOn+L6jgBq2XCTA8RM6EuDyJUA5Gue7T1IGxyPCB
	DjGCxWYacdE1qUjTaqKZ63i3JqYUhlrdCsaKUHZ1QupcLZx5HoHaHu29KoZgOT7UHzRzMdJTB66aN
	vBbwOwVNXcKcngviY4rHrH8b1sGSot5Y683MdL8Tfzrw7d1T+3IHQZCURCMxA9o6zvBukl49q+KtZ
	SK8Kp3Pczi1hO3l4viVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRoJh-0006Bp-CN; Tue, 05 Nov 2019 02:11:33 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRoJd-0006Ab-CQ
 for linux-rockchip@lists.infradead.org; Tue, 05 Nov 2019 02:11:31 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id C092EB91;
 Tue,  5 Nov 2019 10:11:15 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from localhost (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P30487T140190989403904S1572919874837003_; 
 Tue, 05 Nov 2019 10:11:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7db33688997b4ea1b5cb25c90a5b9dd4>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: jakllsch@kollasch.net
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Levin Du <djw@t-chip.com.cn>
To: "Jonathan A. Kollasch" <jakllsch@kollasch.net>
Subject: Re: [U-Boot] [PATCH] configs: Rename roc-rk3399-pc -> roc-pc-rk3399
 =?utf-8?B?ZGVmY29uZmln44CQ6K+35rOo5oSP77yM6YKu5Lu255SxdS1ib290LWJvdW5j?=
 =?utf-8?B?ZXNAbGlzdHMuZGVueC5kZeS7o+WPkeOAkQ==?=
Organization: Firefly Team
References: <20191102044902.8979-1-jagan@amarulasolutions.com>
 <20191102122808.v5nnb67gfwq24rae@tazenda.kollasch.net>
Date: Tue, 05 Nov 2019 10:11:14 +0800
In-Reply-To: <20191102122808.v5nnb67gfwq24rae@tazenda.kollasch.net> (Jonathan
 A. Kollasch's message of "Sat, 2 Nov 2019 07:28:08 -0500")
Message-ID: <87k18fqdh9.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_181129_700274_74006736 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


The mainline uses 'rk3399-*', so there're rk3399-firefly.dts,
rk3399-roc-pc.dts, rk3399-khadas-edge.dts, etc. Shall we follow the kernel
convention, or add another roc-pc-rk3399 to the matrix? I prefer to keep it as
it is.


"Jonathan A. Kollasch" <jakllsch@kollasch.net> writes:

> On Sat, Nov 02, 2019 at 10:19:02AM +0530, Jagan Teki wrote:
>> roc-rk3399-pc_defconfig is committed in below
>> 
>> commit <8a681f4c5aa15db51ad0209734859c9fe7c29cfd> ("rockchip: rk3399:
>
>> Add ROC-RK3399-PC support")
>> 
>> which doesn't follow the existing defconfigs on rk3399.
>> 
>> So, rename as followed with other rk3399 defconfigs.
>> 
>> Cc: Levin Du <djw@t-chip.com.cn>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>> ---
>
> This strikes me as wrong, as the existing name is the actual name of the
> board.
>
> https://libre.computer/products/boards/roc-rk3399-pc/
>
> 	Jonathan Kollasch
> _______________________________________________
> U-Boot mailing list
> U-Boot@lists.denx.de
> https://lists.denx.de/listinfo/u-boot
-- 
Levin Du



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
