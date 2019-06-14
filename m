Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F4546847
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 21:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1vZg2aNHx1MERfVNeqEpfGNwly/yhceShAT9wXvzcac=; b=fwEdeDKo03WMk0KgC1Ja7XKuF
	8/1vAmvjrK5JULgEDzoQAkDYAEkAP8vqPvm70OB16MTlyANS4gYBVATnA7JnJh8jb4LKWfNtkyEib
	RKlEL08BRx2MnoudOKx9pCPO7ELK/ZgKfk3BvRwU+ImzOqNAlpfs0ICGcXWidFMOg4b+Z+04G3TTL
	BTg9C0GbcqMclKvno45T7uvKt12Ob4Es4fl6ALPX/wfsVWlsFj/XmW9lC3yaEgJKzqaMy/QQmv9zr
	LMU8MNzFV25oxNKqO4cySxPfra5DVfCprCkiVapgiy02xv4peEihojwwUtGrklE1oZKP/oApWxFUr
	Ep4ivcsUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsAX-0006lI-V7; Fri, 14 Jun 2019 19:47:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsAK-0006cn-4t; Fri, 14 Jun 2019 19:47:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so137613wmd.1;
 Fri, 14 Jun 2019 12:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=w7hWwTYJqqdtzNOgI2SlOoDpVDK4IVNaEZYhxTxW1ms=;
 b=E7NvstzZwUvIUkg8f3C5Owi9vBiTS+92/z/pEcuqA6hibXdSEb2sDw6Dn53Jj3fVrZ
 9K8Fp+1yWBowk4sbqNrKo/vC0yR//ZOlgCMTv09SH1iYKSr19Ea01b0EZu+tIflSlf8n
 KgT8Dk1suYc5/O0WG+rjESkWTjh0N6eJPOEGD90G5Ry9UzbHCMwkmFZ5W8MTIXcacMzE
 ZAorz2dWJpYNBIqNV/uTnimyE7hot3tGiDdpaaWoouPoCOju6iP1CMUMpFzOQnxi5oN7
 tyCTvUWST16V1kTGb+k4uY/SPK9bFqGJujeR6sWOZcicH0dtS1Iw2Nr5inoQOE0kjz4b
 0Sdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=w7hWwTYJqqdtzNOgI2SlOoDpVDK4IVNaEZYhxTxW1ms=;
 b=tiB5xLUeVr5n2WLDIDn1sXsMw7vdhq4rQWTFd2FXRSHB9P38oXape60kDP2P9YyLEi
 3uMacLQJe6A5AE/COEkvMIGPJ5yVm6tUTciePlFLyNLgSN1vK6aDp5slIMv4H7L196OX
 uvRpVRq+cZaN18O25ttepY+CSHOYRybz9U/mw6cfN/dyOi9VxYlf01c/aVBUJV2PDoXz
 hknXCJQuIm41gZ6g+5MRWV/5/dPpoNwXR2ZBBBUv4Tg6gz8bdi5WWMjj09g/ftfXAeSo
 MHAZwv/i1xHjTpFAb4LjvLjBgBeAqmrhHlwmQE8BDz7stF59U5ua6Vb4edicyfvK+k5h
 Q5cA==
X-Gm-Message-State: APjAAAV+bBd96ifODTyZCip5PUB63QzPqdSPVZ98f+Ljb9+VeJiE+YGR
 hyboTetScNtTK6WopMdwJQ0=
X-Google-Smtp-Source: APXvYqw+/lotMGB1kmoHtHxy2mEXLLxX8UP1pU2bI/ymsVBaIhukGMPveKI+vAdOPbMWJLLKawenZg==
X-Received: by 2002:a1c:3d41:: with SMTP id k62mr8215153wma.61.1560541630216; 
 Fri, 14 Jun 2019 12:47:10 -0700 (PDT)
Received: from X555LD ([2a02:85f:51e:5d00:f1ab:2da6:d378:d0de])
 by smtp.gmail.com with ESMTPSA id 139sm4385668wmb.19.2019.06.14.12.47.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 12:47:09 -0700 (PDT)
Date: Fri, 14 Jun 2019 22:47:06 +0300
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: add clock for the watchdog pclk on
 rk3328
To: Heiko Stuebner <heiko@sntech.de>
Message-Id: <1560541626.1367.2@gmail.com>
In-Reply-To: <2207770.HSO279VB62@phil>
References: <20190605235714.22432-1-papadakospan@gmail.com>
 <5657669.4RvfzeBcXs@phil> <1560506054.1367.0@gmail.com>
 <2207770.HSO279VB62@phil>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_124712_190763_6F0D6F11 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 itdaniher@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


ok. I have tested the conversion on the platforms I did convert there,
> so I'll just apply the 2 patches later on.
> 
> Should I wait on you respinning the rk3328 watchdog patch, or just
> add the rk3328 watchdog pclk myself?
> 
> 
> Heiko
> 

Would be awesome if you added it yourself. You seem to understand this 
a lot better.

Also, I checked out the patch you CCed me on and I'm happy to see that 
the reused code has been replaced with a single unified macro. So much 
tidier.

As far as I understand then, it's a case of adding the pclk id, the 
sgrf thing and enable it in the dts. Cool!
Hoping to see it in 5.3



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
