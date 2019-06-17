Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBB2488B0
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 18:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7y3n5OlWcHNcy8ktWy2jyAYto88VBiYEVi+pjKePH8=; b=Ff9UhZ0wcfbmwo
	S1f7EaC9nG1G76fd0mz+P2f+WLkYOgslAubqkJgvVABt+UdBLNaeR0ySxRbALYE5ajtncVyQFCFaV
	6x+ITmigdfAOJDdxGxJ4iCcQoW8qf46FP9DhAhbIu/NH05BVcdx8EyP/JLcsEw6ojBjUotu50yVj/
	dFVXB9Hah87Ph4ArnS+brOSJdhmiWn3dS8w2hr3otZAurHkcLYsz7f+82DYUNoH8BK1oW9lWnyeql
	XYIweiu/Rwyq0rc/RNCM0ehcPVYURkx/rpum/cAZrTTMO0lfcSbalJsHFX7fcu4zeewxPmmO5FKCO
	Caju52ioec70rQpfCPbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuJM-00069k-Ui; Mon, 17 Jun 2019 16:16:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuJ4-0005xZ-ML
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 16:16:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so6088796pgl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 09:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zvibPhwENQ3qc2un3M/Q6u9vfA61QDqGf+AvuS+Jre0=;
 b=ZoqSWmU/lQLp0AxiYiOl4DnE8lGbhiLm4TaGaplykVD8NJT3wL2fFNQtVZ1rhnDefR
 BaZR79IvfuOD5CsEX5Gw7fbGTcYyajcJl9kBZ4M7KE9N1zgzsiE4tOPQV7Ij2cCHZ82h
 EeOCnc0aOXf5zaqOyTsOM7HB6gCUwOMLTttbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zvibPhwENQ3qc2un3M/Q6u9vfA61QDqGf+AvuS+Jre0=;
 b=CKQprTyui4G5YSKYM87vhi7NkDuy/iGn37qdf3HOlh0eIBl/KT07xa2VKMp5P83FbF
 5Q3Y4HjHkfBKkLz9Fvoc499ZiWyR1b0juGnj3ZmaP7ytCBcuuHxRhj4mqLc7EJliU5Qc
 5LiHqvaiJ/RM0mgLrPUetzbI6L4ruXW0GHaE7oyYNwVp9nkKcwQwO2cTb/CVgal8D/0y
 ELvW2m+zggd+K/140DJzg6QPsRd+PkqlZHGcpoELEkv8t2jzsmTnMx7Yo0jw57elEtny
 U+csGmY5KYXv12Ybe84gJbtSt0Y6Uvxfn1Yva+foxqypTGSsBJ57ACTgug/NjKttveyw
 kvqQ==
X-Gm-Message-State: APjAAAV8oFSx1K26n6kLw6uNyAalmJA5Kxh/weGebkVVkh/hgMOWqfKw
 TtFPtCgrPdOjCZzM+kTR+QhHhg==
X-Google-Smtp-Source: APXvYqw3rc3Tet3QBs9yulULj2UwlZKr/1RY50orF99rzSnjjv2kEBXdw1GPW8ggnZq5hpDRRJ/YNg==
X-Received: by 2002:a17:90a:b908:: with SMTP id
 p8mr26903360pjr.94.1560788189915; 
 Mon, 17 Jun 2019 09:16:29 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id d12sm12846713pfd.96.2019.06.17.09.16.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 09:16:29 -0700 (PDT)
Date: Mon, 17 Jun 2019 09:16:25 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190617161625.GR137143@google.com>
References: <20190614224533.169881-1-mka@chromium.org>
 <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091630_748148_9DE8E996 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Pavel,

On Sun, Jun 16, 2019 at 05:41:43PM +0200, Pavel Machek wrote:
> Hi!
> 
> > This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> > 
> > According to the commit message the AUO B101EAN01 panel on minnie
> > requires a PWM delay of 200 ms, however this is not what the
> > datasheet says. The datasheet mentions a *max* delay of 200 ms
> > for T2 ("delay from LCDVDD to black video generation") and T3
> > ("delay from LCDVDD to HPD high"), which aren't related to the
> > PWM. The backlight power sequence does not specify min/max
> > constraints for T15 (time from PWM on to BL enable) or T16
> > (time from BL disable to PWM off).
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > Enric, if you think I misinterpreted the datasheet please holler!
> 
> Was this tested?

I performed limited manually testing.

minnie ships with the Chrome OS 3.14 downstream, which doesn't include
this delay, to my knowledge there are no open display related bugs for
minnie. One could argue that a the configuration without the delay was
widely field tested

> Does patch being reverted actually break anything?

To my knowledge it doesn't really break anything, however there is a
short user perceptible delay between switching on the LCD and
switching on the backlight. It's not the end of the world, but if it's
not actually needed better avoid it.

> If so, cc stable?

I guess this is an edge case, were you could go either way. I'm fine
with respinning and cc-ing stable.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
