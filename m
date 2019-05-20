Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D054D23FE2
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 20:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uf5HOu0pjDXuq0aW6AjhqCS1GwAQmYIdULYfVMtqeHw=; b=bamw6BLhhsNFvV
	LhQN89agulDyqxQaQFXTGLVTB07VaR4BztjEh+kk97D+BhoIwVjc1sj7n28n8auePM9xXnnnJHJy/
	aqSkxbX3p+kp5aIX5BR+nVcTrmuoIXrXh/XcRyzYnGlxihKB01aydOLK7sreh7NZ4rk7I51SdHQy0
	/EtPFOsUDs6uW478RiilN7Qc/hPDHVvYM2+ACw7DkZ5aZor9vHvY1CytVW/wu8IY72E1Z6GnIl4DO
	BROLxbWy8Q0yTGboTYP4jBGEtkMaL+nS5+bS0RhOIEcGRdDUHzgjfRws7LGwUDAxNsa4MfXgStueY
	JbpuXsPnSTEDJ7FDANvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmef-0004sD-RX; Mon, 20 May 2019 18:04:57 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmec-0004rn-4C
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 18:04:55 +0000
Received: by mail-ot1-x342.google.com with SMTP id s19so13849010otq.5
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 11:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l37zIVlCi4dbNDMGaFWNQ6h6zOWM8mlC8MVadX95qhk=;
 b=ZDuGf+wIJRM3SUZGnB5R5xtdCvh6zDqkd2hQEQlMJrnwn1aNAweMHsf9xJTipnH5Xm
 JZf3UZvTYWJlvaaVC3pYVCAC/YPgsGT0hFI1XlBBBwmfxPsN2niZv35FfsxOzbIDe8sL
 1oYbID6Y9SrEv12zWHhdJyfiOGNfn2VcH3VoA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l37zIVlCi4dbNDMGaFWNQ6h6zOWM8mlC8MVadX95qhk=;
 b=M2Qeo3mREpNcq86n+Gm0CCh+75RiPde98YmRypPV4Z251KsaKgg+RnDM/0ZBpfZxeU
 vE6LgVBzAatZXOJX0xKILeOv/suq/53m5ZUPU+NW60CNyKsvpYMadniZBxnmpEoKuKpu
 dK1ztJf3Mk5dttpvlU6FvPrhC0Ymg4qa5d3KwPKGIMnhhef6hm470bwAF1wIAF2+bly8
 9hMzwQaI+0I0wdkTs4cCs8n7l5yWXGZPY6kSWcw49XMVC+BUbOqUnNOItw1h9gweWo5d
 1gZDfNK5YWG8a7qEBws0qskz4CI6mcCcxEy31rgZSw4vtSrcVI4SarH7lg9AE+zXJ4DH
 NJGw==
X-Gm-Message-State: APjAAAVcUGd99Isyq4eVn+ttk44O235z2aN1VpmFgn+QkJ9FsQit2f2z
 Og0zpVl1jvv4R4Sz4cvQ4wXSSKhW5dA68A==
X-Google-Smtp-Source: APXvYqxgSNQCcEbFbeWPyIRCLKDMLRhv15CzKGQoRXStecdfbEdQIi1IG+uAZJagPxdC1qvYB8FYAw==
X-Received: by 2002:a05:6830:1104:: with SMTP id
 w4mr4179415otq.165.1558375493129; 
 Mon, 20 May 2019 11:04:53 -0700 (PDT)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com.
 [209.85.167.180])
 by smtp.gmail.com with ESMTPSA id f7sm7744412otb.66.2019.05.20.11.04.53
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:04:53 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id w144so10670880oie.12
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 11:04:53 -0700 (PDT)
X-Received: by 2002:a1f:a410:: with SMTP id n16mr8477054vke.73.1558375068277; 
 Mon, 20 May 2019 10:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190516225941.170355-3-dianders@chromium.org>
 <201905201037.p3rNy0yX%lkp@intel.com>
In-Reply-To: <201905201037.p3rNy0yX%lkp@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 10:57:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VOPAufL=u5iRCpO=Rdg--goZJ3jxM1znzyEXMTVBTFJg@mail.gmail.com>
Message-ID: <CAD=FV=VOPAufL=u5iRCpO=Rdg--goZJ3jxM1znzyEXMTVBTFJg@mail.gmail.com>
Subject: Re: [REPOST PATCH v2 2/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110454_161375_4AD03E09 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 William Wu <william.wu@rock-chips.com>, Chris <zyw@rock-chips.com>,
 linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 kbuild-all@01.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Julius Werner <jwerner@chromium.org>, Minas Harutyunyan <hminas@synopsys.com>,
 Ryan Case <ryandcase@chromium.org>,
 Dinh Nguyen <dinguyen@opensource.altera.com>,
 Alexandru M Stan <amstan@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sun, May 19, 2019 at 7:08 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Douglas,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on balbi-usb/next]
> [also build test ERROR on v5.2-rc1 next-20190517]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
>
> url:    https://github.com/0day-ci/linux/commits/Douglas-Anderson/Documentation-dt-bindings-Add-snps-need-phy-for-wake-for-dwc2-USB/20190520-033119
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git next
> config: x86_64-randconfig-h0-05191510 (attached as .config)
> compiler: gcc-7 (Debian 7.3.0-1) 7.3.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    ld: drivers/usb/dwc2/platform.o: in function `dwc2_can_poweroff_phy':
> >> drivers/usb/dwc2/platform.c:545: undefined reference to `usb_wakeup_enabled_descendants'

Thank you.  Fixed in v3:

https://lkml.kernel.org/r/20190520175605.2405-1-dianders@chromium.org

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
