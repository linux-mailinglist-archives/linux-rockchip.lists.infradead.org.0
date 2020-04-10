Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254E11A47DA
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 17:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKjhqdviSDVPwxA7HknHXF/VqHplRH/LHaIbf8kc7cg=; b=RV7DLPqBfiB+57
	WE1A4KqgJBPBEb1K8l5wvjXoEXut7tnm4oCVemyW+xFEhsDUGu4rxQATJNH8qZOBm+vE3WYwwKk+R
	YeuQULbiIJO8gKif/w7y70FZkHCLzhi9YTUtQKjugojLiysQ2cpGX4QxWfDaa4ZKRZVblEHcqXqTW
	F98oXy98AYKdyM3gwKyla8Fafn+cw3U/WKUEGHBoTtOl85z3oTHSjuH0HVj/WL59e1MOMg3oXSb5/
	RACEIHAnOREc9nN6VQxMoIqSuZlSv/N3Wx31l+AXZXEQJn8Ju6IyBYfJaPxE+1toKVTE2Uq071jOw
	Wo+0G9G5N+OzDWLmoXmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMval-0001Pt-0f; Fri, 10 Apr 2020 15:29:15 +0000
Received: from mail-ua1-x92e.google.com ([2607:f8b0:4864:20::92e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMvah-0001PO-EX
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 15:29:12 +0000
Received: by mail-ua1-x92e.google.com with SMTP id x18so9292uap.8
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2020 08:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Fs9iOjZB6kqIyxNTIT7mN8CfQ+MPq5zSLjHONRoSXc=;
 b=ev/twj7sTU6E0Ypcawl7UQXqDyn7+mXWYyS++S+Swxyjhtqtz89STlaN0wf9I8YnrH
 ychq3FzVX/IOjYY6/2n31fNfCo7annSDPkMl769LnBbtfKm+NHIV8AeW0ZFfbei/KnRK
 oFFd20LkWEqg5zowhsslHvkktpifGB8UbeJTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Fs9iOjZB6kqIyxNTIT7mN8CfQ+MPq5zSLjHONRoSXc=;
 b=Ic8ZQjez8sXj+P6+cG8Ciakc45s6vYdYPKCzFmsU46JtrZcyhYaPyad2Ud8KqyH/KU
 7NaSsnlqdTRyttX26Bft2UfTH2QHfoR6diweQ3/TQpnr8Pmo/TwRX83vPychDsKs7B3c
 qTSL+71n/H5wiI9U06/V2EJ7V06boTxxIQslqFLQukn0qRDM722++qMrqRkfCEqzlNB9
 6NPpcsrEeNd/1HPp5zP2A9ld4fESUGvdRcrPyL9q1nvZwRPE4FhMkNnecQq9nAnF0kZw
 wiRFrOSqgyhI7/3vaEFZTBJsgWW6KNFaSPA1l+5EuE//dOyu8qd2YwTLfQpHwVgNg6jd
 MBVA==
X-Gm-Message-State: AGi0PubAQLuQkOa4kI0BFvcHBYNCi0A2pRWJyapR9kpXspEWeUp9veoB
 XhZ5tqrXnpwur/gKHefiB4eAOvlIAxs=
X-Google-Smtp-Source: APiQypIlb23lEXW0pdn9fSpr5V11wncV/CyFwavCCBFGgnSa1tzPCgNi2bJZVmHif6Z5vmH+F+JOGA==
X-Received: by 2002:ab0:4827:: with SMTP id b36mr3360516uad.56.1586532548800; 
 Fri, 10 Apr 2020 08:29:08 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com.
 [209.85.222.53])
 by smtp.gmail.com with ESMTPSA id k26sm499778uag.10.2020.04.10.08.29.08
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 08:29:08 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id g24so726601uan.10
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2020 08:29:08 -0700 (PDT)
X-Received: by 2002:ab0:1d10:: with SMTP id j16mr3361573uak.91.1586532547643; 
 Fri, 10 Apr 2020 08:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
 <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
In-Reply-To: <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 10 Apr 2020 08:28:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
Message-ID: <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
To: Enric Balletbo Serra <eballetbo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_082911_514689_75050D67 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:92e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Milan_P=2E_Stani=C4=87?= <mps@arvanta.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Apr 10, 2020 at 5:56 AM Enric Balletbo Serra
<eballetbo@gmail.com> wrote:
>
> Hi Milan,
>
> Right, this is an annoying issue but also known, unfortunately, I
> personally didn't have time to look at. but it is in my TODO.

Random shot in the dark, but any chance somehow your PHY clock and
PCLK for the eDP don't match?  If they don't then (IIRC) you'll get
random failures to access eDP registers.

Some history in <https://crrev.com/c/433393>.  It looks like the
changes in that patch are upstream but if something else happened to
make your PHY and PCLK mismatch it could cause similar symptoms.

...of course it's always possible (probable) that it's something
different, but since that was such a weird and hard-to-track-down
problem I figured I'd at least make sure it wasn't that.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
