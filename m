Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBAA1AF996
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 13:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LC8GbY95TOzT3LK5ZTUkg1BQhbm91KyuvroNXbW3cY=; b=X25eC2FYJ7jxRi
	/wCA0g0mVR9wK4LKcjmVnEfHp7V+kBNp2JnUqRQlX3j8rSod0R12j6FmyXYCr7BxAM0qoyHRTUkoi
	q33oeFSPb4FC50mRMrL6vs/IRXsDwLRKL8cMaimTT8EQ5+qbmq/2YppZHSarNIFZl8/FMZfaiWnMH
	6OHzOyud7Hn72oMRaw6gS6ip/fbBeX5FVW3uKSfS6oMzCrai6UHMfyL47UqSwXoDQRnbq+wlRvPAe
	rs9FaavvJLlMUXCq7Kk/eRRU6140zj3T0WObJNTqOE53YirjbmjIBOqg1cz5SPq89aCnNUuZmHI1d
	RMhVsU+gK1ywsDpM5pvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8Gf-0006iV-Qe; Sun, 19 Apr 2020 11:37:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8GU-0006Z0-04; Sun, 19 Apr 2020 11:37:35 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ8GS-0006Te-O3; Sun, 19 Apr 2020 13:37:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct PMU compatibles
Date: Sun, 19 Apr 2020 13:37:32 +0200
Message-ID: <2225548.BNUbTQZfRr@phil>
In-Reply-To: <6dfed94a99780c2314b38ff2b55a7efa0be4edbc.1587125314.git.robin.murphy@arm.com>
References: <6dfed94a99780c2314b38ff2b55a7efa0be4edbc.1587125314.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_043734_030485_75FF32AD 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 17. April 2020, 14:08:34 CEST schrieb Robin Murphy:
> A proper binding for the Cortex-A35 PMU actually predates these DTs
> being upstreamed, so use it.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied as fix for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
