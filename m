Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71186E90D
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 19:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvmyPY4pHC6AIMF3Rbj9yLFu2LUrcHsqVXb0wJiDcmU=; b=fJ7AD1f9HR3dMv
	od/tq9k8rgLYyKM9Hio2eYzhUW0qZ/Cthwr+JTQq3oCZcWjb/cFEcBU4SRopTTBUHHLinfDL+XhDE
	sKcmK5OneyRi3YZHE33mRdaNsjKu99n4Ti8wfjcgiWWUCV2/edOPKA0p1gq+Xozzc5poc66FcZ9DV
	OiYq7CRFGkHTBBYMXbHTrAgWfdCbb01Jhn2yguLx7RCg3DhcEvQG2eYxiXGg4tOs349Xi0Nxx3gkt
	H7s9F0pKOW7PuPCAW7ObHl/37TVNYHoPt5s/6rmmkcXyRwcTpZ5rTjeJAmMe+lytVUuCeUDSeM/B8
	ZM5Hc9ayxfMSR8wvBddg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA7G-00017s-P3; Mon, 29 Apr 2019 17:30:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA7F-00017k-L3
 for linux-rockchip@bombadil.infradead.org; Mon, 29 Apr 2019 17:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hLy/N5IIDU5S17Aiea9w/yKdhqHcRyIx5lZCj1/EzYo=; b=v3cXi/lmewwK5SjIaAaobkeH3
 5vATH7Typ6rXMuyNrrTz6+epDCgNNz18oHbVowpIwayr4T9P8MBKE+4tbM5l2Tl6uOfW0D01A84zr
 XSZV2MCSIXDJo6B8gmtKZAt1vxfjbW/7IAT5Sxw2xbrDRK2njuqxHi2ZeGfzBvo0ICIVzThsPfIo8
 xsg9Q4IPP/gcYA1XcJw13dO9cA0RZqRr2CgO6zy2/LHootfGJSCfj+4jAmtRwrSlk2j+4a7QBWQgF
 +6YNMA0dY/WtvmcK+Nb4AaGMveAsludCMoWo3afPShX2JGrAmB9Nz096xtnOAddzi2rndRRa6as58
 nu9TEAfSQ==;
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lQ-0001TP-Jk
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 17:08:25 +0000
Received: by mail-lj1-x242.google.com with SMTP id y8so3666632ljd.3
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 10:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hLy/N5IIDU5S17Aiea9w/yKdhqHcRyIx5lZCj1/EzYo=;
 b=xNOyBR9tm/L1PFDzPEPPpBt81NrtPjOtAaY+TztDpLOW1hnU1y9Qss0zqIrPgWLu7p
 i1NXOVD7BMNqm4CPqx55LcldmDjz2HvstzaIbEEmVDmvRNDp2nvFRp33YlJRC8yvGLui
 4V4KIxvt0SloN/qaiiJycOhwb9PkWpTsD9ek5nosxmzptDYdYz9kp9ZcQ6QNaW3QIPzW
 E8/i7Bse71rxq/XP6NEO0rUL8QC1G37TXW39/Z20yzXKV3bG8gR/LTfGhmJqoEkivuAZ
 wdSeifmwy0FKBupzYov3+IjP878fbc0lJyyMR1rtrPhoZqjv+lVPIYOdfPr49QiUe0eF
 LwxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hLy/N5IIDU5S17Aiea9w/yKdhqHcRyIx5lZCj1/EzYo=;
 b=X7lirHYrOIpMTSbWql6oh6rppHyiWDV2wIK/RxqcH1T9KscDoet5vbxse/mXx+QT+6
 ifbpsHoTyW3cLrouIXwpFS//TSuF6h4CY8B+lGArfhANVQm+Ku2SYrmfA8giPKLUVcoP
 1Q7PyaHDCUrxaERBYL5T1v3rZNJySXep2LSQ54ci0ML12NxxcXuy8Z+sYAjX+KxE/0bH
 Aq9rkWCJ53baK0NsJHT4tqiNkEMfr2gOi7/yZvjWafocB9S0DpkfrAKT8NBCnQ/AwX60
 k0e14Lhf9Y9HG5G7hhpJz/yO41lITdmwCujZsRDqmt3pOJtJCUOmoqhCDG1x9DVLyaHg
 qWuA==
X-Gm-Message-State: APjAAAUDiCZAdAiEe12YxloEhN4sgrMe8OzP/2NUvpmAxMRp+t0S5ZAW
 00sxIR8yF7hR4xvEAQhKWTjF/BSC1CHxQQ==
X-Google-Smtp-Source: APXvYqx1UyC6K4jBnPvzwH/GS8GycAaY+bpNnIMrHPnz6Gy67DBivsbRsgqaoPPMMPtdouU+4iwAQA==
X-Received: by 2002:a2e:8905:: with SMTP id d5mr30147170lji.59.1556557702067; 
 Mon, 29 Apr 2019 10:08:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h26sm5374847lfm.11.2019.04.29.10.08.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:20 -0700 (PDT)
Date: Mon, 29 Apr 2019 10:03:18 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 5/5] Rockchip defconfig32 updates for 5.2
Message-ID: <20190429170318.63wwgxov2lbyrvvk@localhost>
References: <3379363.gjmLGbHmEH@phil>
 <3043127.yMmPYKTTFR@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3043127.yMmPYKTTFR@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_130824_723148_4201682F 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 08:00:07PM +0200, Heiko Stuebner wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-defconfig32-1
> 
> for you to fetch changes up to 366391f04177355320a3dbc5705daa017de5a373:
> 
>   ARM: multi_v7_defconfig: Enable missing drivers for supported Chromebooks (2019-04-23 19:53:29 +0200)
> 
> ----------------------------------------------------------------
> Enable more options needed by Veyron Chromebooks.
> 
> ----------------------------------------------------------------
> Enric Balletbo i Serra (1):
>       ARM: multi_v7_defconfig: Enable missing drivers for supported Chromebooks
> 
>  arch/arm/configs/multi_v7_defconfig | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Merged with some fixups due to churn in the file.


-Olof
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
