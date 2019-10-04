Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF6ECC3CC
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 21:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDvORVhaw2Ov0sQrzrxbydHlKOmTk+AAEF7EnPxmTdg=; b=dsj5KEZgy0q2au
	OJk9To0BFuzqOm6Zcbw12/CP0uYV2n3ngH0mJI5KgbyVA57ZDEkqYmR1ax8YjzcLyYO3rDIp6bevz
	ykOBGsg/eK2SYWzYPipDuPfknMgD+l7CEThvdCZf4NiRcA0VsDeemyAjfGFNEZkIFVhwo0cSu0Jx5
	08T8A9hhyRcu06RIbUff1m2lQSCIC6aKR1IypPaTeR0bdCZTNfzCKKxJYpEMS0gBqCcKTUm8J2WzG
	EHS9KTmI4AX3DZgyPtyfYfkUvT0u/H8ef0s2/mxKXL8Kv+aDm77XP6zn2Oev700SbSdREA965T9/n
	kW+kjGCxtFCgjCfo5Q6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGTfP-0004qX-6m; Fri, 04 Oct 2019 19:55:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGTfL-0004D5-BR; Fri, 04 Oct 2019 19:55:04 +0000
Received: from 94.112.246.102.static.b2b.upcbusiness.cz ([94.112.246.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iGTfI-0006St-CU; Fri, 04 Oct 2019 21:55:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
Date: Fri, 04 Oct 2019 21:54:59 +0200
Message-ID: <3908342.LUz8zmGQAZ@phil>
In-Reply-To: <74097d16-ec3e-70e9-f835-25ae265b0ad9@katsuster.net>
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
 <74097d16-ec3e-70e9-f835-25ae265b0ad9@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_125503_543892_46D9EDB5 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Katsuhiro,

Am Freitag, 4. Oktober 2019, 19:26:00 CEST schrieb Katsuhiro Suzuki:
> Past about 1 month, so I send a ping...
> 
> On 2019/09/08 2:48, Katsuhiro Suzuki wrote:
> > This patch adds audio codec (Everest ES8316) and I2S audio nodes for
> > RK3399 RockPro64.
> > 
> > Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

thanks for the reminder, applied for 5.5

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
