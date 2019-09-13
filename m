Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD98B2727
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 23:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3GbVBsPr5104diwbEVSJI6+/SpW5GlX3r6UlI8lXSc=; b=tq9d854OYolq6h
	PnFKpZdfNUteJqNt7tDnrXxwMqJ1YOD1CEYNwgLFYYxusJnIrf1HddnqLvfwRnN1HQC+6x51oDCna
	WKqR1mD+j468QbOYBuOOjBqZ+69o468M6NsMm1WN6f1P4miGqhDxNvpGVNjnqajcqvoM38vrRc20+
	EDJJKz1kPb+XLwsf5gALYSTVkjrAOYdJutGPUWPXslWa3xytukRpUth//Fu1zbVIILzOT6vxEgoO1
	n1EEjV0QhCt68PPtaQRQumcopkoZ+y5+44QXhtU1aE2fWgt5Y5Xyc1zz1NkeTMwwhd03Nxttts596
	nKK104GZ73dcMUVrryHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8t1C-0004Iu-K5; Fri, 13 Sep 2019 21:22:15 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8t18-0004Ia-2F
 for linux-rockchip@lists.infradead.org; Fri, 13 Sep 2019 21:22:11 +0000
Received: by mail-io1-xd2d.google.com with SMTP id j4so65709641iog.11
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2019 14:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9VoHpxjpLYJsliUy25EtLyHwornelC0sr5MZg7JBvnw=;
 b=jxe86tW6+7NUeCdt98d2cydX4f4NRi8V91JUUi8nu3N8F7+FiVQCk/x/7Gt1tVyoHC
 PDITCkrY6uP54/YeEbJ8Fav3/mHbthiV9T6wCdjK36YXu0HI/Spr1K04+ZTTRuI6Qx9S
 zf71XICBFPaP+PHPqrtsn7bSz6sglsBBQ8mZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9VoHpxjpLYJsliUy25EtLyHwornelC0sr5MZg7JBvnw=;
 b=KKAHCNn/WF2gasjs+cD6N6RIUkxC3tBTz8vo26YZQnzmwJXN4hrYbEtfqJ65y0/hNQ
 NuGEXWCEA+bOQJG364JCQ4u3mlkalu/LMJWjHbDjBIregs6n+9xx5hb1L0NKpWGSfPz6
 V859ozyP0lruvdJWlDPkplnXrfwxh/YorcXEcrvdToSp3y9DfwpHi3zUdnx7OoQfM6zu
 x+xUum+/8Ypic0MqESERxFXhQYeWGij8GJzbsAYXmZrYl/ipvLe8sFy1Aa1VaReq5ksv
 2UCDC4y6ZgaU7C3ePT4xu2fMQtlY0ocgGddRVHYVYitEyq4gRbixWWN4iJ7EAjvhi6xD
 2u4Q==
X-Gm-Message-State: APjAAAWoELPTwzkg+KCDOiMnXBgAOCa10T4cac7rV45i89oXpuxs9ZE+
 Ynoln0hmhLthv/YU2H9aRTLMGWpyiLSNytkVMTKLoQ==
X-Google-Smtp-Source: APXvYqy0hIH5UBWcoxDg/NYJvdK8NDZB1mwHwcGyOVTS0jTcwYZk6UC5d1TLezHEYKEEH9zIVOj1e5a/ZNo6Z+1O0IY=
X-Received: by 2002:a6b:f80f:: with SMTP id o15mr2323209ioh.174.1568409728952; 
 Fri, 13 Sep 2019 14:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
 <20190913160129.0cc8bc99@crub>
In-Reply-To: <20190913160129.0cc8bc99@crub>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 14 Sep 2019 02:51:57 +0530
Message-ID: <CAMty3ZBg+YpBU28jxbWpE4YPihdfLFWYYtJOtsN384wCkZD_Rw@mail.gmail.com>
Subject: Re: [U-Boot] rk3288: HDMI out causing boot hang
To: Anatolij Gustschin <agust@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_142210_252043_F49682AF 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Anatolij,

On Fri, Sep 13, 2019 at 7:31 PM Anatolij Gustschin <agust@denx.de> wrote:
>
> Hi Jagan,
>
> On Fri, 13 Sep 2019 08:19:47 +0530
> Jagan Teki jagan@amarulasolutions.com wrote:
> ...
> > Any inputs?
>
> Try to input "setenv stdout serial" command on the serial console.
> There might be a chance that stdout/stdin has switched to the
> video console and the output proceeds there. If the HDMI display
> shows nothing, it appears like a hang.

setting serial to stdout, would be a normal case, with this display
didn't probe atall.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
