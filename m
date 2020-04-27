Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EAD1BAE3F
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 21:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KrWZm+agDyFtNbVJouF2OKI2Sd9E5kl9A32l4aRHgo=; b=HDeoaQfdoVcYPj
	TQXjNPJEMxfraf5QkD+L0fbULHF3SVdiVGX8I1IRZuP5BAPe4AIY1QYHV2GFfND/45TaOYwuPcaOY
	a2Td39GINQ66tKLwMDQ+yyWVHygz0NjGGTIiPNAnySug9/iwHtUg/EO/RHEtG9UCjHFtA0EAn22bZ
	jUozfN8JFwcZUVfaMHx4RJlrtga54xzuazxe03B1exWPL0OUhgg9KxzgFAxSl6UXiLJSMXVGBXB+r
	1y+MFIThiTo6VCo/PyetCcNez572NklZ1WHjUtkWdAtvGhg3mD0wstTuIgh2Vr7zAkmFoqRof392v
	+Gbuqg5rAhstTHsgCDuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9eh-00035m-TR; Mon, 27 Apr 2020 19:43:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9eC-0002im-9o; Mon, 27 Apr 2020 19:42:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9eB-00007W-3u; Mon, 27 Apr 2020 21:42:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: swap interrupts interrupt-names
 rk3399 gpu node
Date: Mon, 27 Apr 2020 21:42:25 +0200
Message-Id: <158801649141.50507.17010202047447992818.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200425143837.18706-1-jbx6244@gmail.com>
References: <20200425143837.18706-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124232_336336_39BB2E2B 
X-CRM114-Status: UNSURE (   8.85  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 16:38:37 +0200, Johan Jonker wrote:
> Dts files with Rockchip rk3399 'gpu' nodes were manually verified.
> In order to automate this process arm,mali-midgard.txt
> has been converted to yaml. In the new setup dtbs_check with
> arm,mali-midgard.yaml expects interrupts and interrupt-names values
> in the same order. Fix this for rk3399.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/
> arm,mali-midgard.yaml
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: swap interrupts interrupt-names rk3399 gpu node
      commit: c604fd810bda667bdc20b2c041917baa7803e0fb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
