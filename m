Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D75411DD2C
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 05:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4bACu0zJ6D3EftuYIawrh5DIY3FV2WcMGWwtAE6yTs=; b=V97YHD7cWENqnD
	FefYczNKtIOG6pXZ1myZxg5ybvMu84oN3Ns49lwjHuTxq/WEHGYG9MtdnmuevxWLQKHFPqQA0Ddns
	jcOX0EJICGLNnD12ySdb73ufTj3w8Ut0EvHDYpktPJEtvyB6c+A1RPcGL2IyEh7ZXSrpef6XxWWlw
	4AKB18jCcgQV/4Q2SfnSWPbGiwDvHaWc3OFz6dhCbwCzfDMwTy9QM2F0pTTgy9YCN4rdSPOTek0lm
	STxfAAkAG+ft/hG4Mb+oPERU/uixIMXDt51DtudLWD1QUct4Z1mR+WDDEjXkt4QQLlJjcDuvN/Rg/
	nIKMpPFYkfUCAbDKha1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifcj1-0004iq-Db; Fri, 13 Dec 2019 04:38:47 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifciy-0004e4-HC
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 04:38:45 +0000
Received: by mail-ua1-x943.google.com with SMTP id z17so337115uac.5
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2019 20:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=End3OvBpc+ygNGyVRW83GCf3Bo6cZwj7YlQ/woj7ERg=;
 b=NgCbOcIfEosgK7rGmNe2T5lGSJOb8IDeMriMbHtrhCum7NjFGyqAhn7K8CbTiJyEdO
 6+W75tOyldD9w2Tm//wqoeF2XB8XiWag8787WGwLJTpcluK6VO0s0jj1Fga83B/uPImD
 P/e4bBZVi6LadafPV00uBmigNWzl28j1FnWsB4PVjPnvdw9viP7bRInczKdFcH4HOTJZ
 6TJWuiwcl+Q10A/NsbU+dV4K8W3Pl6KTGw8WMl+2YmUqvjz73KwgajaaSn1Ump9Lisgo
 aFtFhdFGUPvQWGfFhgNpGrRAOkZeOzf//86XUGfxshiyjyTXh5VIdTmSZG3dSNQ+KmBu
 2Nog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=End3OvBpc+ygNGyVRW83GCf3Bo6cZwj7YlQ/woj7ERg=;
 b=nJgSLbI7FxvwCUcHanSdkBCKe6x7O5Tk4Zv34YauIpUnVT6BjsIMAh9jascRRY/VmC
 U5F+R940x7F0v+75lD/Z6saK6HAkk+7LsYZ9tdWddubcjF7khOxkWmdp52gtJHVxm7Qg
 y8ast4gbWMXUksp03D2f6WDZzoCcV0+axPhpjVaGH7a726ni9STrj7XsvAVcMIu/nNSG
 B6fCU4xZz+u60sTs2i5T0NUoYiO/CdCivSXVc3k4p8uI8HWH3TdlDF+W6obbovfu6s+H
 EQN4/5C7pmoMfUmAIGbF+JYIYQLXr0Z5LV+SEe/Gln7bfQ3Y1cVQg/NHBVIerYbxNTnz
 /xkw==
X-Gm-Message-State: APjAAAWxOwE5B3BBCpO0R9e2BNRZHMJa7jctX9/IAon/gPkrLPKpwh6v
 0cieig7zaRPf7GxFmfqkqKalYh7UwFxps9H0ajnMzQ==
X-Google-Smtp-Source: APXvYqwv9mzxgV/3oPODaUBDzbQgXuYQWXhKnbm7cl4vi1ycEuXmhUCYBcB7WE3KiGJh/ydRTwYlGm3vUIO6AcUK7UE=
X-Received: by 2002:ab0:30eb:: with SMTP id d11mr11521987uam.67.1576211922735; 
 Thu, 12 Dec 2019 20:38:42 -0800 (PST)
MIME-Version: 1.0
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 <20191212232859.E09FC6E85603@corona.crabdance.com>
In-Reply-To: <20191212232859.E09FC6E85603@corona.crabdance.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 13 Dec 2019 10:08:31 +0530
Message-ID: <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
To: schaecsn@gmx.net, jdelvare@suse.com, linux@roeck-us.ne
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_203844_598488_990F06BF 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Stefan,

On Fri, Dec 13, 2019 at 4:59 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
>
> Hello Amit,
>
> > On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > >
> > > By default, of-based thermal drivers do not enable hwmon.
> > > Explicitly enable hwmon for both, the soc and gpu temperature
> > > sensor.
> >
> > Is there any reason you need to expose this in hwmon?
>
> Why hwmon:
>
> The soc embedds temperature sensors and hwmon is the standard way to expose
> sensors.

Let me rephrase - is there something in the hwmon subsystem that is
needed that isn't provided by the thermal subsystem inside
/sys/class/thermal?

> Sensors exposed by hwmon are automagically found by userland clients. Users
> want to run sensors(1) and expect them to show up.
>

That is a good point. In which case, I wonder if we should just fix
this in of-thermal.c instead of requiring individual drivers to do
write boilerplate code. I'm thinking of a flag that the driver could
set to enable the thermal_hwmon interface for of-thermal drivers.

> Why in rockchip_thermal.c:
>
> drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
> used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
> st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
> rockchip_thermal.c exactly the same way.
>
> Apparently, other architectures hook up the cpu temperature sensors to hwmon
> elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
> are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
> already drivers in drivers/thermal/ seems to be more elegant.
>
>  Stefan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
