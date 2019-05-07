Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351E167BB
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 18:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gF9jAwUF512eJBIAObMmF2hlQKsliakTTHqv7nFKOI=; b=bfBnYzbgQjatCn
	Tzzhu5GlIknVKhkPN9HJf6yIOH7d2uXdxws12rILilctzLGIyPOSeZLi5bgygebYoZZdq5LfZ4tqr
	dJKzTytuJOTwo4r6s+6c3O3+tlTmX4kMJWfUQ4HZGjiWtAH19161Iac7xFnpYpVpAddsIh0Ey53WW
	V/xT6hDbObO/lmBeKS3agby8hwz1QZWE0KSpuhKUl5DO5zNtdG/1y4iU5fHiDhZDR+ykHrJ6AthaW
	dZAJbkzabQZp3bToe9kheGJQQ/9L2FQjysV16PknaJDsz87G/pKPT6HISuEMHAcDIVHTUBV3u6f59
	C4towh64aqzU6NfXOvYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO2ub-0004A5-Kc; Tue, 07 May 2019 16:25:49 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO2uY-00049f-D0
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 16:25:47 +0000
Received: by mail-vs1-xe42.google.com with SMTP id x78so10774532vsc.3
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 09:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XZBHeLaF7S92v0l4QxOY+7+a7SVFf3e4IMU1a/EyhZU=;
 b=FdE5v5Nkjtfn+/19+R0Pk3wYCQgRQYC24hOLprsBD12gsCEw/431JDUAphm0qonEL4
 VRGScFvxEPxHEa4donrqLG9WEjBuCQEQw2IunnnzXAJctRb0o9c7zeZc9oktalXGCDgP
 Y9xq30nQkr7eKpuXyjdiYOywWimZcvZ86oVD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XZBHeLaF7S92v0l4QxOY+7+a7SVFf3e4IMU1a/EyhZU=;
 b=NasO2gJCczd/1/qpX6xSW1g+VWGS82eO0nMdY6ffur/y6dTko9H2cef1IqfHrTHvj2
 7SfLgSorRRBjm4tfdT4D5Knx7zqsTzI/VIvrkDlOZe+ZeOx1oXjkvke1fQEDMBdhJA6F
 DJXXaPOpaz7HJubFz3yNlvsgoey7qiFiH5XPx+NM1Xge9KBkBv3ADovfebbHVDUhYHkl
 eI/uVSyLIDgRLNJA/R0sHmIRvPrXD8nnr5HBUAAJFkSa7lNT1igLGmDCizlnn8nHWG0x
 aJk5mSLnxfjNgbRO7S4w9XnvAFpmfaxvDMQrCr+gG1odUTauUqN/7eAUt/paOY0v/uU/
 k6TA==
X-Gm-Message-State: APjAAAVQqlVQwZz4glzHowyTZWPYMac9wtZX1/BqG20jKvsK0yIXPAo1
 V30aox8FfpQk8AYRgxX+tF8HVRf+Auk=
X-Google-Smtp-Source: APXvYqxHQMlJ/Ae/otdwSITVQ4gq8mqqmb/yLBq6RybmR2jKgCdKT8jYhOZZZfdBiZsczkZN7SYA6A==
X-Received: by 2002:a67:ed44:: with SMTP id m4mr17546158vsp.112.1557246344666; 
 Tue, 07 May 2019 09:25:44 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com.
 [209.85.222.44])
 by smtp.gmail.com with ESMTPSA id e6sm16972154vkf.0.2019.05.07.09.25.42
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 09:25:43 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id o33so6233489uae.12
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 09:25:42 -0700 (PDT)
X-Received: by 2002:ab0:2692:: with SMTP id t18mr17168546uao.106.1557246342369; 
 Tue, 07 May 2019 09:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
 <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ@mail.gmail.com>
In-Reply-To: <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 May 2019 09:25:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UKTDFwq3PSdpPmShRcOtZaH1mU=2H-ynoG4VooV=rKVQ@mail.gmail.com>
Message-ID: <CAD=FV=UKTDFwq3PSdpPmShRcOtZaH1mU=2H-ynoG4VooV=rKVQ@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Brian Norris <briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_092546_470022_EB528C68 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 Anton Vorontsov <anton@enomsg.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, May 6, 2019 at 2:40 PM Brian Norris <briannorris@chromium.org> wrote:
>
> On Fri, May 3, 2019 at 10:48 AM Douglas Anderson <dianders@chromium.org> wrote:
> > When you try to run an upstream kernel on an old ARM-based Chromebook
> > you'll find that console-ramoops doesn't work.
>
> Ooh, nice! I still get annoyed by old depthcharge firmware. It's
> almost as if we should have gotten an upstream binding approved before
> baking it into firmware...
>
> > --- a/fs/pstore/ram.c
> > +++ b/fs/pstore/ram.c
>
> > @@ -703,6 +704,23 @@ static int ramoops_parse_dt(struct platform_device *pdev,
> >
> >  #undef parse_size
> >
> > +       /*
> > +        * Some old Chromebooks relied on the kernel setting the console_size
> > +        * and pmsg_size to the record size since that's what the downstream
> > +        * kernel did.  These same Chromebooks had "ramoops" straight under
> > +        * the root node which isn't according to the upstream bindings.
>
> The last part of the sentence technically isn't true -- the original
> bindings (notably, with no DT maintainer Reviewed-by) didn't specify
> where such a node should be found:
>
> 35da60941e44 pstore/ram: add Device Tree bindings
>
> so child-of-root used to be a valid location. But anyway, this code is
> just part of a heuristic for "old DT" (where later bindings clarified
> this), so it still seems valid.

I agree that it was unclear in the past, but it is true that being
under the root node is not according to the _current_ upstream
bindings, right?  ;-)


> >  Let's
> > +        * make those old Chromebooks work by detecting this and mimicing the
>
> s/mimicing/mimicking/

Kees: if you want me to spin with this typo fix then please let me
know.  Otherwise I'll assume it's less work for you to just fix it
yourself when applying.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
