Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8A2ED71E
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 Nov 2019 02:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiw/pIbgec/Lx+JcaEKvfQjoSXWuUbc55lMokSjENHI=; b=o7S2oFaAg3PJjT
	lGG9FENbHMsVWj07aItnhEq2SVH93kdmLiu9OEAcbMoEkjzPDEec2R7YAhtNDVZOGsAukFoLTNXoz
	B4qkmuRvANJBgX9lBzH1mEvMLPAmFNCkyB/R4nlIPUHU+mezWhE3J9sp2xLaHPJKyAWVFtXUMEEZw
	u8YuOhaT4kDesjF5bBXP7ZYOkkNl9Q5MF4glLzVCq4MuZXxygoNE6fAJiYs6xIR0/gKnyv7L6/5u1
	cvJfgCSXkdTtLNKUwWD8sotVuiekwkoB4OAdtp2rVjLvDDPOt7PYMdxuXR9U/sm8HcjxeAWP7G/+c
	GH/vNAij9OreY4rqFUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRNw-0005MO-B5; Mon, 04 Nov 2019 01:42:24 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRNT-0004c5-Ec
 for linux-rockchip@lists.infradead.org; Mon, 04 Nov 2019 01:41:57 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id A198A3D6;
 Mon,  4 Nov 2019 09:41:44 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from localhost (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P18954T140289907869440S1572831703234404_; 
 Mon, 04 Nov 2019 09:41:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <aada109d176a175dc23407b1e5f027e6>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: jagan@amarulasolutions.com
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: djw@archiso.i-did-not-set--mail-host-address--so-tickle-me
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] configs: Rename roc-rk3399-pc -> roc-pc-rk3399 defconfig
References: <20191102044902.8979-1-jagan@amarulasolutions.com>
Date: Mon, 04 Nov 2019 09:41:42 +0800
In-Reply-To: <20191102044902.8979-1-jagan@amarulasolutions.com> (Jagan Teki's
 message of "Sat, 2 Nov 2019 10:19:02 +0530")
Message-ID: <87eeyopgdl.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_174155_659165_17BBCEAD 
X-CRM114-Status: UNSURE (   4.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
 DNS
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Levin Du <djw@t-chip.com.cn>, linux-rockchip@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 u-boot@lists.denx.de, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


The mainline uses 'rk3399-*', so there're rk3399-firefly.dts,
rk3399-roc-pc.dts, rk3399-khadas-edge.dts, etc. Shall we follow the kernel
convention, or adding another roc-pc-rk3399 to the matrix?

--
Best Regards,
Levin Du



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
