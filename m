Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C764E1FC8F2
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 10:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pILrBTr8/eAYE6jUpywtBZ78i5NEbv7jGirIcOKcmg=; b=p9JTQaUjGHdnu5
	GKvRq7zb9vo8QjbbwGNvzUCCRE8ZhpysJ7BmA1HxlIEUBRLuS5ciXrMAyVEKAFrbR3OPxUCsejU5p
	xcjNIppm8+jKs2lGzRaZlg+SgJWP/TqqGgGlc5o2IT7tj+bAvkonqwjA9Q0QS0685DqcAxI0otEVu
	7FF+4OF+Jph18erKl3g0eEMONycQLLiQJsUTiZoAB7pSykHgkhbqTkhD1j+GH+dPd6bmTY8TP33S6
	VFGM28HKDoXxiYmou89TZdl9F+bMD4w+uLunxevhZ0mcQ+mxJQWzO/z9gmhVgfAKCN3pDMlx80lOW
	aP02hJjYP8XvuF6G5NKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTaC-0001oi-Qu; Wed, 17 Jun 2020 08:38:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTZK-00010y-78; Wed, 17 Jun 2020 08:37:16 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlTZJ-0005rL-1X; Wed, 17 Jun 2020 10:37:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rename and label gpio-led subnodes
 part 2
Date: Wed, 17 Jun 2020 10:37:09 +0200
Message-Id: <159238301927.1406601.9417520180577782611.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200522154657.9472-1-jbx6244@gmail.com>
References: <20200522154657.9472-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_013714_248921_ECDB76C3 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 17:46:57 +0200, Johan Jonker wrote:
> Current dts files with 'gpio-led' nodes were manually verified.
> In order to automate this process leds-gpio.txt
> has been converted to yaml. With this conversion a check
> for pattern properties was added. In part 2 rename and label
> gpio-led subnodes that passed the regex, but still don't have
> the preferred form. Any pin subnode that ends with '-gpio'
> in the pinctrl node generates a warning.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rename and label gpio-led subnodes part 2
      commit: 6dd5e12c0b9bba40b3947ac1a9fd2f992585b5c6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
