Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FCEB67F
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 22:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUPxo3jBElmwojm257Pm7oQzHH3zYEL6D4VpoocxAZw=; b=i8tpcJ6GXQJzBC
	F/5IZfAl3bSAAcdAZhC6JUMDYA1QsJSn77oK4AWc9RnYZccfvEF0Qdt39tnH27d7G3fGH/lhUMuaB
	37ikGF35y83gC4mZcatxlwSLYd0ePRgLyVhcClP/qYbmgsOin/boj/VPpYSlFvgV8E7EWjY+1EFzY
	4AnT6gWGxE8+Dq6TPc+QF4XkDigQxvKt82/WWHZQVfVKnscQZOn7ZM/p9lYJ2xmprApHxxaeTKPY/
	9gY4jK0+r2RfjILfS85HUaDNzQNPpK7f8IpwZW6x/xPlSkjGAe0TyDiyfv+aOjkSHatb/Pyp+7YkZ
	VAqqacg2ARXWCYeWn9Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqHk-0008Qe-Ls; Sun, 28 Apr 2019 20:20:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGY-0007JL-KA
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 20:19:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id r72so3102222ljb.9
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 13:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TC8WnyIW0+hcHP+c02ZiGFwwFNwFewi3G0H/ReEGpKA=;
 b=G/n2pnTgoyKLEjHq/IIgy3C8+g46/oUxV7MCUdS005CmmxYAdIg7+e5JIwMkM2tfNG
 jrLIUyM4zEYmclur3S5Nl3XCawCJ+HVktmHmyx7cjhTu3oHtRKiNplRgm/1LA0IutxIb
 8CRq2KKw9wYfRpEivnY5yasgsFV+ZxAsmArcwt2cHQcdXN85GLNvcAsEhM8nASR3T8yj
 5MZLTc4+FksTZIj2+5WLcwIOsABdounD8x9Yol1mTFoPVZkMvio0cYus8tFA9jk9Vhh6
 fdZ6dIe0jjYC1rOneud6IssI9eRsgAJglHcsf08EhPCXeoySg0yRFggz6JNCbg8iMYVW
 Z6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TC8WnyIW0+hcHP+c02ZiGFwwFNwFewi3G0H/ReEGpKA=;
 b=AgdoprZoPm/FdSsprHdTGi/PBT3jLsH7Pp3JUSNA4aZTac7aaER1eKE6DYwPyq1kF6
 RiRPC0qtWg95Q5JYPUxYROp9mH4sH4UcLP06ptjlB1nuZrZagGKkY1SgNTuz3ukDwJuz
 h2sRKcssvXt1h21OGMGphEkak2XLvM3GYUlgatUFifj7B45xYF3Sug9riKGRdST6OgIQ
 RvBlkpskdXFN9/bFM1fOAd27beoXZfPhFT/zmgSmRZ8KKZnMd8gHGis9vGvzlxW27pk1
 b8Rn2fnhDH3FDQPP4XSe264nQClqa5zlTkLd2GLWwAEtXD5qjB6ZvbQa+f5FT0tOp5Uc
 QGng==
X-Gm-Message-State: APjAAAV9ySMebjzrw3BMCsl/6d3sElXQNkKr0UyREqoVCVoKSFDTlQjN
 hu2erjWDjELPkYYMJ/cU4V8DSKMpW5kCiA==
X-Google-Smtp-Source: APXvYqxIDWZKOgelNp/gizwb2NX9oneOra2aIBOF6mq/B9h3SLV8neq9B/xCeXrtsRg47qkfhSvvog==
X-Received: by 2002:a2e:4555:: with SMTP id s82mr30554363lja.15.1556482752963; 
 Sun, 28 Apr 2019 13:19:12 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y20sm7053488lfe.8.2019.04.28.13.19.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:11 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:16:02 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 2/2] Rockchip dts64 updates for 5.2
Message-ID: <20190428191602.tppyav74kupzbzu7@localhost>
References: <13182220.1UgD4fsNbT@phil>
 <21013717.BSZSu47YRi@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21013717.BSZSu47YRi@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131915_123462_81676A34 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Apr 02, 2019 at 11:05:53AM +0200, Heiko Stuebner wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts64-1
> 
> for you to fetch changes up to b4e1728232d64b8040dae9b5405cf2db7ebd4e8b:
> 
>   arm64: dts: rockchip: Decrease emmc-phy's drive impedance on rk3399-puma (2019-03-27 13:45:27 +0100)
> 
> ----------------------------------------------------------------
> Core new soc features are hdmi-cec for rk3328, scheduler capacity-values
> and emmc cleanups for rk3399. New boards are the OrangePi (rk3399) and
> NanoPi NEO4. Both the OrangePi as well as the NanoPC/Pie family also
> directly got some additional features added after the boards itself.
> 
> The Rock960 family (rock960+ficus) got their power-tree cleaned to match
> the schematics and also got hdmi-audio and their gpu enabled.
> 
> Mali support also got enabled on the RockPi4 and finally both
> rk3328-rock64 and rk3328-roc-cc got some additional features.

Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
