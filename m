Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2401C6EBC
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 12:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWrvwkp/QK6R+bfPR31ObWNAMd69sh7lU65EpM+P/+0=; b=E/XQrfWjb7TPZ8
	2l2mgz63SSPvqzpFV2qu/Ekkkg7Em+kOEwfOhdykcYguC6bG03WprCfoc4hU/buOuqtt7vZt6W14m
	Tp+/DBr30KDF9rOk/e52MeEhfkSOLX9b+9KujHDTOzIaxVTREQFwM9a6NAq7lyDaQ+isGskp/4F/2
	uaKg712CRTBYTcdlIOkJwG5V1n9iPo6sCmLwyAY4itz0/VKTKOWdvPgdjCsJnR/GACXrcD0GILufP
	m0gP98fvj0NF9xMz8nbJQ5nQGVHkrqr2YJ3WynGu0M7eljW5VEUxnncPYsfGXiEi7Gk4N332oJJOG
	0xXhGcgt7Pr+ZQLXcM5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHeM-0002dv-V2; Wed, 06 May 2020 10:51:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHeJ-0002dM-M0
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 10:51:37 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jWHeE-0001gH-I1; Wed, 06 May 2020 12:51:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] pinctrl: rockchip: return ENOMEM instead of EINVAL if
 allocation fails
Date: Wed, 06 May 2020 12:51:29 +0200
Message-ID: <2632193.tXVvSI4HnL@diego>
In-Reply-To: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
References: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_035135_714459_72C9AD00 
X-CRM114-Status: UNSURE (   6.55  )
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
Cc: linux-rockchip@lists.infradead.org, dafna3@gmail.com,
 linux-gpio@vger.kernel.org, helen.koike@collabora.com, kernel@collabora.com,
 ezequiel@collabora.com, linus.walleij@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 6. Mai 2020, 12:14:24 CEST schrieb Dafna Hirschfeld:
> The function rockchip_pinctrl_parse_dt returns -EINVAL if
> allocation fails. Change the return error to -ENOMEM
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
