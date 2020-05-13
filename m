Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB061D0443
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 May 2020 03:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E01As4MKX8oG+iHY7Q7H63u/wdi3ENt5Rqc+j36bcnw=; b=kUGEJJsK3Mm31Q
	HyRW4tZHd1PJYVZw4WK1wOialzouxt2vbJmKuVI2qgPQuuv5fNcPG0BZZAH1vqLJNJ5i3Stp1Ef9W
	eqtga68h9lfucW9SdgWszNJHvHbaeBG8ENpRjmDyRiB7q8P4lZizRtmS+VA3wAl66WnDKIjxf0mHM
	jNojqq9eQdS829rscPUtoZC5AwmJiJ0yo/8ByfkOQfwd9aoaz0BKTE0B6skmA2Q4irTLZpXWLGyPO
	hfPW0N8hgyRw0IHSDGmkWdYdeZcZinA3tJB28YdeA7IqyaSf4HUYD0K9mNjvfgMDYsg1sHiwwOoqq
	7vcmbdmKtalHHTQPECsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYg4S-0006su-Lk; Wed, 13 May 2020 01:20:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYg4P-0006sS-Qt
 for linux-rockchip@lists.infradead.org; Wed, 13 May 2020 01:20:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B715206D3;
 Wed, 13 May 2020 01:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589332825;
 bh=aUO4Hd9gwJ7SPhAlEhXeA+zsnUAmGPEMNmhK0lYyhBI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=TfWbrfb2iKisn7uoK14YHqxFjSGP/7Lj8zLE0sJ8ga6B5D4P7y23ywi6cFupFdup4
 /i3cc2wN5ZF2jPZeKFXflJMS3SVmj13C36+yO3Hc1e4w+2jIRIYO7iOoqIRA6EURff
 J9Hs+AAX1vvNN+2oP7iqFbkDZdGBjwstZNH4jSdY=
MIME-Version: 1.0
In-Reply-To: <2256140.alkMTrVvHO@phil>
References: <2256140.alkMTrVvHO@phil>
Subject: Re: [GIT PULL] Rockchip clock fix for 5.7
From: Stephen Boyd <sboyd@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 12 May 2020 18:20:24 -0700
Message-ID: <158933282442.215346.11254945377753790433@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_182025_891956_C01582D7 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Quoting Heiko Stuebner (2020-05-05 17:28:40)
> Hi Mike, Stephen,
> 
> please find below a rockchip clock fix for 5.7
> Please pull
> 
> Thanks
> Heiko
> 
> The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:
> 
>   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.7-rockchip-clk-fixes1
> 
> for you to fetch changes up to cec9d101d70a3509da9bd2e601e0b242154ce616:
> 
>   clk: rockchip: fix incorrect configuration of rk3228 aclk_gpu* clocks (2020-04-13 09:35:24 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-fixes.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
