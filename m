Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF041BAE47
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 21:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgPIuNX0ca9eXd+dFACqQAjlshws1c83S9EQ8V3S4zQ=; b=YrCnq8jViCHZQ2
	hrv+p1PPLTA5egHFQnmV46K/NXFuh4bvn156S9xGXdfWhT25ZDVgu/Pz8xmWlGzPkirWsBZFC/+rm
	bYEDgAZNriyxfwccMCo0Z+PYp7f6TbmLp4dzChMPr/k2MMwcTMfh4FwC8zFTLNFWheQf/RElc2Fff
	APyNtNgzHDinMgqQusH+CT6MkE/F1ABgRfeJx1GO6gnUQG7JhKAt3HrFspizhG4WmRMM7F3BC0UvL
	8HaV5Ea3m2YjCZP1/A3qrWc14w1P1OX/GHrje0UnZIUlCoBosxOoIszjAV1NfHpw8b2ygK98jRyWn
	/6Z4vVdMrpLkTYVUCTOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9fY-0003sR-Ug; Mon, 27 Apr 2020 19:43:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9eD-0002k0-ST; Mon, 27 Apr 2020 19:42:35 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9eB-00007W-Sc; Mon, 27 Apr 2020 21:42:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Pinebook Pro FUSB302 interrupt
Date: Mon, 27 Apr 2020 21:42:28 +0200
Message-Id: <158801649141.50507.10990580306626948371.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <f731122c5ccde4e3d6d149a9d7bf01708b4279f7.1587736459.git.robin.murphy@arm.com>
References: <f731122c5ccde4e3d6d149a9d7bf01708b4279f7.1587736459.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124233_931253_D4FB1B78 
X-CRM114-Status: UNSURE (   9.12  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linus.walleij@linaro.org, Heiko Stuebner <heiko@sntech.de>,
 t.schramm@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 14:56:19 +0100, Robin Murphy wrote:
> Although the FUSB302 driver has apparently supported the "fcs,int_n"
> property since the beginning, the DT binding has never documented it,
> and in fact defines a standard "interrupts" property as required. It's
> also questionable whether the GPIO specifier with GPIO_ACTIVE_HIGH is
> even correct, since the FUSB302 datasheet says INT_N is an "Active-LOW
> open-drain interrupt output", and the Pinebook Pro schematic shows it
> wired directly to the GPIO pin.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix Pinebook Pro FUSB302 interrupt
      commit: 89ee3ace7292d94539aae156fb6fee65460b8bc0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
