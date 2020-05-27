Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BCF1E3962
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 08:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBBk1B8wMZnzTsIVo5px19heiY06lK/MY1ouxK9tUMA=; b=L9O6um7e4OXXJO
	4EArSR5HQDO+T99yFie6Gl1TBnCfKs8NQC/gpJgFxFzCkgBbYJ/M5MBy/UNroPdkjqfmC+Y7rnHIq
	rLvgeRZKt6Kd1QrVEdNsHsONWRsQcf7NFMCPoS8Xw2rJlxiMyLKVk2OqVFq7q+mKxPhQ63jePq6dK
	nAEWxazdfslXE1hXwyZLDPR7fT04VJ3qOD1TrKdMZTulrX7ihSoAj9DlbdBIvSb9T8EmCTdvXxdp+
	l8jNPAJsDkAkBvw/Bz76yLNs+46AkxS0/m1mYBDU0u3htTSJbFurdyycUL8NkNulQYuZWo3ntdURm
	2b2uvAguWN6CINlBSg7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpfr-0003KL-5V; Wed, 27 May 2020 06:36:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpfZ-0003Bj-Ni; Wed, 27 May 2020 06:36:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E860B207E8;
 Wed, 27 May 2020 06:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590561365;
 bh=SW76oimJYBSq1jfvOmB7+fzPc+VS1jxwlYYMtvl+iWU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=FZ7h3hvE5tRccZG6mQ1UUm85PO2lQCDNk+TIkuog3bzNkqB77/mUOFzyAUzk2x3IF
 8MvSrhvefyrQB7FxBl9ahyoIudcPdwg0Dip2smDd5VRltpYCDRT3iK5DHz3GBJt8ce
 a+A38TU6ztsVmTNYZXNwcIkC+h3x/yiTptGvRIKY=
MIME-Version: 1.0
In-Reply-To: <e563eea358181446dc42c99e842c33f7ce911936.1589460539.git.robin.murphy@arm.com>
References: <e563eea358181446dc42c99e842c33f7ce911936.1589460539.git.robin.murphy@arm.com>
Subject: Re: [PATCH] Revert "clk: rockchip: fix wrong mmc sample phase shift
 for rk3328"
From: Stephen Boyd <sboyd@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de,
 mturquette@baylibre.com
Date: Tue, 26 May 2020 23:36:04 -0700
Message-ID: <159056136421.88029.13822814553469355422@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_233605_793981_217B7D9E 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Robin Murphy (2020-05-14 05:58:14)
> This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.
> 
> According to a subsequent revert in the vendor kernel, the original
> change was based on unclear documentation and was in fact incorrect.
> 
> Emprically, my board's SD card at 50MHz and eMMC at 200MHZ seem to get
> lucky with a phase where it had no impact, but limiting the eMMC clock
> to 150MHz to match the nominal limit for the I/O pins made it virtually
> unusable, constantly throwing errors and retuning. With this revert, it
> starts behaving perfectly at 150MHz too.
> 
> Fixes: 82f4b67f018c ("clk: rockchip: fix wrong mmc sample phase shift for rk3328")
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---

Heiko?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
