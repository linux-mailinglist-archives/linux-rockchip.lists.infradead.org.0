Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6E21DA07B
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 21:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSFVy+a9s6z613wOEa8WAFko/UwP/uRMge5LUxIFVWo=; b=qA/Q45WVKnIOiA
	shfc+aD7yETb3LuML4FpsE62oq23wNFVY7J6Fjpl5jWGjnRo1piKDLrcxWdvnnIYtDcNzPwx6ovQb
	3e5Gcm3JmXgzXq/I65Aig2h1Ra52ABAa52D2olIIOlvdt3rha9APdIv3JCHAT9iOUcabzpKtRlT6i
	tantbZ3cuh+Bdhz+M1h7wR9OnM3PwLic41GIg1hIfu7BVL/1z4hjJAsm09HWL98RJFP2ECZeWWSKO
	Q4LyUwfAAzNcED6FnWJeN2xMM+h+vuUWKLT0/2J85WQj1RWtkY+9p1x7IK6UODPmt5XdqkiToQ7Y2
	+lhUksju2Y+DusLmT0vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7Zm-0002yU-4x; Tue, 19 May 2020 19:06:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7Za-0002op-0G; Tue, 19 May 2020 19:06:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jb7ZS-0005bQ-Mf; Tue, 19 May 2020 21:06:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] dt-bindings: gpu: arm,
 mali-utgard: add additional properties
Date: Tue, 19 May 2020 21:06:33 +0200
Message-ID: <1740173.3xtLDEJ6Vg@diego>
In-Reply-To: <20200519164425.9729-1-jbx6244@gmail.com>
References: <20200519164425.9729-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120642_043853_79A5CC12 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, maxime.ripard@free-electrons.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Dienstag, 19. Mai 2020, 18:44:25 CEST schrieb Johan Jonker:
> In the old txt situation we add/describe only properties that are used
> by the driver/hardware itself. With yaml it also filters things in a
> node that are used by other drivers like 'assigned-clocks' and
> 'assigned-clock-rates' for some older Rockchip SoCs in 'gpu' nodes,
> so add them to 'arm,mali-utgard.yaml'.

though the other option would be to just get rid assigned-clocks
in dt-node for utgard malis ;-)

Like any good gpu, lima should just use frequency scaling to achieve
suitable (fast <-> powersaving) frequencies and it looks like a set
of patches for this was posted in december already [0].

So I guess one could expect opp-based scaling to land at some point.

Heiko

[0] https://lwn.net/Articles/807444/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
