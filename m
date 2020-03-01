Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD560174A84
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:38:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTY6GRXQPAbG2IYvN/7IpsJ6szyJPWGoNzs867r47QE=; b=oXA2/UAH4cHfG/
	6rr1Pwt5cKjadBF6dEExEkycDAyLSb4CY3ZV7FhD+n0lj2ZRhRtZs+3CFpDmog95OiIhBHtaYhsn6
	jBqisrK4eQU9RfMU1+DuLndYwhOY9h3V3DuU79JFzwtmsJbjvjHkGdwS9LvMJK3fpJLJb6MTAKYO4
	vpISxjBUYDawQdi+XycXqjTiK636p/A5sQolAGFTP15winLEqkFdSOruZ7FDao0oCjBbasNTioHvv
	TM0/eodoPTAU04krcct315vBxr59f5t5ckgemkM3GhYs7W/0V+m3gauRUYTyA51hha1YPlS9Ov0g7
	jONMrXpLVNBraYM1hGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Ccq-0000c5-Kk; Sun, 01 Mar 2020 00:38:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CcP-0000Cc-Rs; Sun, 01 Mar 2020 00:38:07 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8CcN-00050P-Lt; Sun, 01 Mar 2020 01:38:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] ARM: rockchip: fix spelling mistake "to" -> "too"
Date: Sun, 01 Mar 2020 01:38:03 +0100
Message-ID: <1720649.X7Ob58gyZQ@phil>
In-Reply-To: <20200123004807.2833556-1-colin.king@canonical.com>
References: <20200123004807.2833556-1-colin.king@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_163806_088203_0C61ED35 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 23. Januar 2020, 01:48:07 CET schrieb Colin King:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a pr_err message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
