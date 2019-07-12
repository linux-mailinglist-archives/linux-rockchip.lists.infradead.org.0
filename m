Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0CC67508
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 20:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AeMsdxdT2TL+L873nRLX3sBdN3vH82zp5HiMKKS85U=; b=Ia9g/2cc3GKu2y
	PMycrAaoquGCI8G0htvkCnhvHObrkagNumKUGUEaHGTlQefKCyDL1ohD8rnoCcMmD0Wzk80Sr1NaX
	gT3xKsbTi27CY4BoMTlYMg07SCIedJRnaySrRFGcwCOIyiQwr9Thy04JXEFjgBYzX9wHg9ZXgm0QA
	UYbcBRu175XOHktyFL/w384suQJ5p+NIaJdivwAPW4VJRc8KpeJsmHzunZzL0MavzxmsAiQkEqy9h
	C7WfZovIKcSMLiuim5fTUtzBwRGhindEEcw52fVUXMjuK/JpTEMfu8zPiT7bT0lfjV4qo5xXQhcgH
	ONAxaikHerba0j34YyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm032-0007GU-E9; Fri, 12 Jul 2019 18:13:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm02z-0007G8-Mw
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 18:13:30 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46C4B205C9;
 Fri, 12 Jul 2019 18:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562955208;
 bh=vy70ZCADAa8XqPLpwqzkVYFPc3I5xkZ7yX6y1hoW1hA=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=KSXgTFqlAJKChFysyzaafI5QOcT08gAcILu0tSKNujV+7YbVr3ODXyu+JA6GF8MsF
 G7G+51uiIScsM6u42mHMjo5iap2eV0b0VeTy/bYcB3NR9Sf8KBmki2G6Gnmes8YkC5
 9QK6YhVUR3CXeO9Wkvy8uzm1hJx3/xFKbuiphFIA=
MIME-Version: 1.0
In-Reply-To: <3855405.N158XnxgeL@phil>
References: <3855405.N158XnxgeL@phil>
From: Stephen Boyd <sboyd@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Subject: Re: [GIT PULL] Rockchip clock updates for 5.3
User-Agent: alot/0.8.1
Date: Fri, 12 Jul 2019 11:13:27 -0700
Message-Id: <20190712181328.46C4B205C9@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_111329_772926_D3A119E0 
X-CRM114-Status: UNSURE (   4.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2019-07-01 02:36:17)
> Hi Mike, Stephen,
> 
> please find below rockchip clock changes for 5.3
> 
> Please pull
> 
> Thanks

Ok. Pulled into clk-next for 5.3.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
