Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8111D4E5B
	for <lists+linux-rockchip@lfdr.de>; Sat, 12 Oct 2019 10:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fU9m7IM9d2s8bvWkrV+EeilmmeKlNx+EYJwqgtTPUCs=; b=K3hWr2NQBpnR0w
	ASCkSM4EjE+SPLCDweUetP23cfNXDuCxmwV1zPWfTIRJunbY7rYCTQ3+wnRwlq+fd9Kkg4mVGqQ+9
	Gq7iM8Bx1Tn4X727YI45qAa0nvSWPd8R4oASeuH4fXYamPuJjngLUmEJwYec/DO8kPIL4oeE9nFRH
	jCqCbZVqxIo+xJyMxgfFunwkfy4zlO9DaNi0j9NAS50k0LDElRWux2/Kg+QIGw6eBO4v72f1ivZc5
	4DEH3n2+XqAxpp02NEHZF7w65J4+aF3GND88/K3B/QAF6NpVuWm5bcAWXsPw/PwpmtFrcJPebF+0z
	YKo0QMnwRwAXwG7/a4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDEs-0004zk-6C; Sat, 12 Oct 2019 08:59:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDEf-0004qW-D9; Sat, 12 Oct 2019 08:58:50 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iJDES-0006Xs-Sy; Sat, 12 Oct 2019 10:58:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 0/2] pinctrl: rockchip: support rk3308 SoC
Date: Sat, 12 Oct 2019 10:58:36 +0200
Message-ID: <11066785.VItf2zBqlU@diego>
In-Reply-To: <20191012061528.27821-1-jay.xu@rock-chips.com>
References: <20191012061528.27821-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_015849_597012_5690E86A 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 12. Oktober 2019, 08:15:26 CEST schrieb Jianqun Xu:
> Add support for rk3308 SoC from rockchip.
> 
> Jianqun Xu (2):
>   dt-bindings: pinctrl: rockchip: add rk3308 SoC support
>   pinctrl: rockchip: add rk3308 SoC support

both patches
Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
