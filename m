Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166C3101F9F
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 10:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ufEiMO/GeYFluzFTticVADzEM6aDJ3lxR7wCZb/JWQ=; b=JA3a+jXVvzUUHE
	THmsxopAXmCEwKVfMYu2p1Gq7wQfamsrZ3Vqf3kKblj+5uxvirpDIKLk6viQBO4V4RRno62F0sR9K
	/iIQDtxqsf4MuVr1sz/p8UO4FCOjpnIC9Tjm8aU04uRc1Yvb9e+cvmAp3OEUGZdsZbFik2t4xIDUW
	uHG7Xo4l3uf+aBP4N5w7oW6l8NSQkyh3tQz2vpYJ9cltQlsooxexg5fqNc73wwihW4iibUi6i+s8b
	ZwmJnSSu+VXwoJWcIY3lasDEk+sdQ4VkYCS0K78y8ibrdAl3MKW4YvFs3B/p8PO8jQzFbbPe0tr7P
	TLv8IqBlEBxTg250bJFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzXO-0003l9-So; Tue, 19 Nov 2019 09:11:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzX4-0003Py-5L; Tue, 19 Nov 2019 09:10:47 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWzWz-0004FY-8i; Tue, 19 Nov 2019 10:10:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add SDR104 mode to SD-card
 I/F on rk3399-roc-pc
Date: Tue, 19 Nov 2019 10:10:40 +0100
Message-ID: <1847470.bs3PIdjKfZ@phil>
In-Reply-To: <1b9b8314-8778-2d48-6f7a-3502c2146c42@fivetechno.de>
References: <25466090-3b24-2695-10fb-88c59be3f149@fivetechno.de>
 <1918981.kTmXGv9Lqf@phil>
 <1b9b8314-8778-2d48-6f7a-3502c2146c42@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_011046_373473_E0706949 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 'Ulf Hansson' <ulf.hansson@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 18. November 2019, 12:23:47 CET schrieb Markus Reichl:
> Add SDR104 capability and regulators to SD card node.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied (yesterday evening already)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
