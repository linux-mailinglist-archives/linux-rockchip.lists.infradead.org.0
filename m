Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFCA19C353
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 15:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76CttFANtACy9wBdgPdpqxt3mBcineYxwICLX0B0poU=; b=OcPA+qGuULcyWl
	VVe020n+/FuqLuGZashfMMv+Eex/3w1mjNd7KGW94ukuGjT/IEr15HXDTlRQ7aWlLTMUuh//zi7Im
	8gWQwo0zaLQj7EgPKGgF+rjTYvqiIIZj99UUyuYlSRUlF6XgvVw2MEJQDjNV31nzGvki8HckOEKzJ
	7JIAxz3vx9WN6TuEOrNirN1qu37q7JOmJU7L07MMgyII7sBaZpwIRlmFihJfVYnjN0I4zObMVtJAv
	vfOB/7bD5mbCSvu4Fgkud7fcY926O/l0eiJOagK2FOn0IuYewBGx9lJyUkHO5PTi1RFlO1Pe97VvW
	1EXnlfpb8JqU9xIwBstA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0Kj-0001i5-Go; Thu, 02 Apr 2020 13:56:37 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0Kg-0001g5-6e
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 13:56:35 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48tPk0153Qz1rv9q;
 Thu,  2 Apr 2020 15:56:24 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48tPjz6xgLz1qv4M;
 Thu,  2 Apr 2020 15:56:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Y8aHRAGxKxaR; Thu,  2 Apr 2020 15:56:23 +0200 (CEST)
X-Auth-Info: Uvdzpjd6ph7CxIDeK5fwueiSKq5jhPODwoPO1qB+68Y=
Received: from crub (pD95F11D0.dip0.t-ipconnect.de [217.95.17.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  2 Apr 2020 15:56:22 +0200 (CEST)
Date: Thu, 2 Apr 2020 15:56:16 +0200
From: Anatolij Gustschin <agust@denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 0/5] rockchip: rk3399: Fix HDMI out
Message-ID: <20200402155616.013f6bf8@crub>
In-Reply-To: <20200402114125.2501-1-jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065634_390913_0C46DCA4 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 sunil@amarulasolutions.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu,  2 Apr 2020 17:11:20 +0530
Jagan Teki jagan@amarulasolutions.com wrote:
...
> Jagan Teki (5):
>   clk: rk3399: Set empty for vopl assigned-clocks
>   video: rockchip: Fix vop modes for rk3399
>   rockchip: Enable pre console for rk3399
>   rockchip: Enable HDMI output on rk3399 board w/ HDMI
>   video: rockchip: Support 4K resolution for rk3399, HDMI
> 
>  arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
>  arch/arm/mach-rockchip/Kconfig                  |  1 +
>  common/Kconfig                                  |  1 +
>  configs/nanopc-t4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-m4-rk3399_defconfig              |  7 +++++++
>  configs/nanopi-neo4-rk3399_defconfig            |  7 +++++++
>  configs/roc-pc-rk3399_defconfig                 |  6 ++++++
>  configs/rock960-rk3399_defconfig                |  7 +++++++
>  drivers/clk/rockchip/clk_rk3399.c               |  7 +++++++
>  drivers/video/rockchip/Kconfig                  |  2 ++
>  drivers/video/rockchip/rk3399_vop.c             |  2 --
>  drivers/video/rockchip/rk_vop.c                 |  4 ++++
>  include/configs/evb_rk3399.h                    |  5 +++++
>  include/configs/rock960_rk3399.h                |  5 +++++
>  14 files changed, 70 insertions(+), 2 deletions(-)

Series applied to u-boot-video/video-fixes-v2020.04, thanks!

--
Anatolij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
