Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A216FB5F2
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 18:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EeS6vDscJALVopoAFIgoUgD0DYiBsngtHLfYODYo1fo=; b=F3jM35ZHvGGpAo
	BYVWO1dy+gSJzdz/ookSG2Cdk8+HBR+fm89kaUQHi+FdIb7z+qwr1cln9cjLPZDIiqxXLO4CLKpy7
	foCdVA1A0WrfEr8UVu4hH6pw9HCH8wZbUwTEO8XyV/tY/wG7VN65YHDd4NSC83i47gMsn16MtzsbR
	cmxNMKfkIfuadIyg0zneUGyQcXsMlQfuCDG+uOKGLemPpD6vmINj9cBl79jX9XINJcp1dSp8F3aab
	iMQLzwCORwNHVmOn/hUfdM8HhOV6vrWnyOc9EY9nIt7hYNaVaZB8XG2MXSc6RZh4f3ao1RhaM4mvr
	ToOZhN4SEVbDveQbvY2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUw7m-0005cL-Lp; Wed, 13 Nov 2019 17:08:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUw7j-0005c2-Iu
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 17:08:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id q17so1742165pgt.9
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2019 09:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bBWxzsZRUXKbQzzivFjemLaJtwPKdmL9lKnNHf/rwAM=;
 b=N89l11BmZ7KDAZGxB47EC1AYg6Yxy1wBxilJdrAUL+wf60hooxylxjDXwTs3ZVa8fV
 IOzY9jFb4SoA5B5B7Qk2dV9Etb0EBG2TyXo3kUXsOy96E/uTaBK4m8IcyQUhs07AZbRX
 J5TON/jLYKd7nEgPCtKqNRlZagzwmWje7FBDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bBWxzsZRUXKbQzzivFjemLaJtwPKdmL9lKnNHf/rwAM=;
 b=KvLSY9+ZOhGkOk0bdcemAXPBZyjVVWKKtFFcbHNUBmJR5lja/ptY3CnC2C5bpEOFUf
 lA7XtxI7iU3lX12Q7lNrOKfI6hl3+WZW1SYf9rYHz5sKwOBQwrCwX0+MWfJDx7h5dPhz
 IWW6HHIw864pRp8fLkhKN9ucIdYLJcZM+0zC5283MKmN5n0zHlKgIPhS7drNyRr1x5WC
 xbOedOuNTHXaw7CuXTsB7XNkARPKBr2BEbdhbELdwYdHOLpeua8VHSKJluuvmz4TYusl
 jQu1KVb/+CCCboNYY4zee+4D0u3gx1/goGqeA0RpFzQgDDdgFdkXsH/c6pY+EYoWKxBd
 C1wg==
X-Gm-Message-State: APjAAAX2k0Lr3Fq6N1oZsGp/eL5voiNOcuNqYeU7VirDZ7fPLznIV8dL
 bAUXVv+tV1dS+UNOSy5Og37JPQr3ouOCpg==
X-Google-Smtp-Source: APXvYqyMA4oIVMvWUn+gW8/Gz8OzntcoN1K5ZhoKAs6G6RkXErItUpIWw9siR42J2x7DsndF/6wkFA==
X-Received: by 2002:a62:1bd0:: with SMTP id b199mr5788528pfb.44.1573664886392; 
 Wed, 13 Nov 2019 09:08:06 -0800 (PST)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com.
 [209.85.215.177])
 by smtp.gmail.com with ESMTPSA id k190sm4731363pga.12.2019.11.13.09.08.06
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Nov 2019 09:08:06 -0800 (PST)
Received: by mail-pg1-f177.google.com with SMTP id k1so436226pgg.12
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2019 09:08:06 -0800 (PST)
X-Received: by 2002:a5d:8953:: with SMTP id b19mr4637156iot.168.1573664490254; 
 Wed, 13 Nov 2019 09:01:30 -0800 (PST)
MIME-Version: 1.0
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
In-Reply-To: <20191111005158.25070-3-kever.yang@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 Nov 2019 09:01:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UjbPALRU2r0s27F4RxjsbDyQ+horUBezVQejk1pT=vqA@mail.gmail.com>
Message-ID: <CAD=FV=UjbPALRU2r0s27F4RxjsbDyQ+horUBezVQejk1pT=vqA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_090807_645465_56D67AF8 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alexis Ballier <aballier@gentoo.org>,
 Soeren Moch <smoch@web.de>, Hugh Cole-Baker <sigmaris@gmail.com>,
 Andy Yan <andyshrk@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Andrius_=C5=A0tikonas?= <andrius@stikonas.eu>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sun, Nov 10, 2019 at 4:52 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
> will be 'enable' with the dts node at a default PWM state with high or low
> output. Both too high or too low for vdd_log is not good for the board,
> add init voltage for driver to make the regulator get into a know output.
>
> Note that this will be used by U-Boot for init voltage output, and this
> is very important for it may get system hang somewhere during system
> boot up with regulator enable and without this init value.

I'm a tad bit confused here.  When U-Boot boots the kernel, how is the
PWM configured?

I remember folks going through a lot of work to make sure that we
could actually _read_ the PWM state that the bootloader gave us and
report it as the initial voltage.  If the kernel ends up needing to
configure the PWM regulator's period for some reason, I remember it
would actually pick something close.  Is that not working for you?

For instance, on rk3288-veyron when I boot up mainline (no devfreq on
rk3288-veyron on mainline) the vdd_logic reports 1.2 volts because it
read what the bootloader left it as.

...are you saying that U-Boot doesn't configure the PWM and you're
trying to fix it up in the kernel?

-Doug


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
