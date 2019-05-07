Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005F416D7E
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 00:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJ2ePQwMO5jLnT9JcLjydfXtKreWYImgkx0TmSgxahw=; b=WKbn7SlwOt1HQH
	wJQCaVlek9wTaqW8ojvKhopEN31whbt91pm2NKlHGvtzCs4D69iSQFBBX86sTyNNPJD5WESXwb1kT
	A+IAX2Cyj/J+fecxF1Rg3eAyUygF9hGNQum4B38BevzkRzKBNbIFPtlRD2FUX3k4CbdfPJmKKyWOx
	OAE/tOFm4oWq5MJFNOdsQ1Yl4Z3AQp9ZzU5QEMtRK9jR4i68HDcZF/OokwbWwAVIDgI7nqN/yd8E4
	CJ5eK1IF1yIDzD7BDWqwQ52JN6PEAoSyTMx+/qZQsO5wNCJTFy/EY5UTxE/AnEhBxaUlnKJH969jV
	hWYVmENh3WP+ZQVMCpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO8Ra-00005t-Kk; Tue, 07 May 2019 22:20:14 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO8RX-00089J-54
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 22:20:12 +0000
Received: by mail-vk1-xa41.google.com with SMTP id u131so4462042vke.9
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 15:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HUjfyo9IQTfykk5cP53qZuYE6lGqJDNLu8EMt8QFItw=;
 b=TSXgJ56lkLW5XfW25fRGLAlniT3SnPiOpDt0bxqpL6M7cykHIMW9neXmDgJf6V2dqR
 Vupz/lhWiW/uvls/Gsv3WjxSLSGlRB+iy4ypPmFktGqIDCFQ3ud95rW7JvxCgEm3u40k
 hHQWi6r9pIY2HBwhsxA6Ci0Gk+aZcoCnsGYaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HUjfyo9IQTfykk5cP53qZuYE6lGqJDNLu8EMt8QFItw=;
 b=S7G+W/l514N8C6clCmdBdhGsUGky0J/HfjMbkT+Wkk7opgeJ1e8DPU9+Ll1eqyhLcx
 is0sb7oXBOtbXknmCt0oFPvfGe2pq2eHhM4eAoQwNMOJ5PQxJz9yVAPqprOqCaHVH59G
 SYBFkGcO2GEIuxJV5AQFOWRsfmB4d0h69iS8E+1xc43QOW4Yi3Ba5i3dqMFSgc2qqHig
 1ibECBHTTuk48CaXXZqKuXGbFiP4nKtO4zFzWw97D1AZfuqIK75pX81MVjvNgata3bA5
 agB3nPdmP6gzGnEm5waNa19ic3g3jFccVgWY5oS6hJDdA4r2VNhHTiY3v7CbNBghJoDF
 opfg==
X-Gm-Message-State: APjAAAXh4TPOJ/lKIqt/lWnzZAoyXxE6AmPLUPsVlrrY5DagXurJmD0o
 WpTdtIv1z40KfhjCqcIs3DK31X53sD8=
X-Google-Smtp-Source: APXvYqyEu5gaCiSe4ZCD2mdgDdcVhfSxf6Q6BO8dcJ6apS/VkSwO9aEVgjf83X3pq3eN9cw7JqtqvQ==
X-Received: by 2002:a1f:3658:: with SMTP id d85mr11459637vka.71.1557267605645; 
 Tue, 07 May 2019 15:20:05 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com.
 [209.85.222.46])
 by smtp.gmail.com with ESMTPSA id g135sm4223746vke.53.2019.05.07.15.20.04
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 15:20:04 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a95so1567573uaa.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 15:20:04 -0700 (PDT)
X-Received: by 2002:ab0:2709:: with SMTP id s9mr16511621uao.21.1557267604203; 
 Tue, 07 May 2019 15:20:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
 <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
 <30361ae7-36a6-0858-77ec-40493ef44b98@gmail.com>
In-Reply-To: <30361ae7-36a6-0858-77ec-40493ef44b98@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 May 2019 15:19:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U5heONCv=W5x6cL_JAmJaeDrjMa0CnQ=UVu+DTZZBNKQ@mail.gmail.com>
Message-ID: <CAD=FV=U5heONCv=W5x6cL_JAmJaeDrjMa0CnQ=UVu+DTZZBNKQ@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_152011_196855_E0D6BD93 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
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
Cc: Rob Herring <robh@kernel.org>, Brian Norris <briannorris@chromium.org>,
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>,
 Anton Vorontsov <anton@enomsg.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, May 7, 2019 at 3:17 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/6/19 4:58 PM, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, May 6, 2019 at 2:10 PM Kees Cook <keescook@chromium.org> wrote:
> >>
> >> From: Douglas Anderson <dianders@chromium.org>
> >> Date: Fri, May 3, 2019 at 10:48 AM
> >> To: Kees Cook, Anton Vorontsov
> >> Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
> >> <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
> >> Douglas Anderson, Colin Cross, Tony Luck,
> >> <linux-kernel@vger.kernel.org>
> >>
> >>> When you try to run an upstream kernel on an old ARM-based Chromebook
> >>> you'll find that console-ramoops doesn't work.
> >>>
> >>> Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> >>> ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> >>> used to create a "ramoops" node at the top level that looked like:
> >>>
> >>> / {
> >>>   ramoops {
> >>>     compatible = "ramoops";
> >>>     reg = <...>;
> >>>     record-size = <...>;
> >>>     dump-oops;
> >>>   };
> >>> };
> >>>
> >>> ...and these Chromebooks assumed that the downstream kernel would make
> >>> console_size / pmsg_size match the record size.  The above ramoops
> >>> node was added by the firmware so it's not easy to make any changes.
> >>>
> >>> Let's match the expected behavior, but only for those using the old
> >>> backward-compatible way of working where ramoops is right under the
> >>> root node.
> >>>
> >>> NOTE: if there are some out-of-tree devices that had ramoops at the
> >>> top level, left everything but the record size as 0, and somehow
> >>> doesn't want this behavior, we can try to add more conditions here.
> >>>
> >>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >>
> >> I like this; thanks! Rob is this okay by you? I just want to
> >> double-check since it's part of the DT parsing logic.
> >>
> >> I'll pick it up and add a Cc: stable.
> >
> > Hold off a second--I may need to send out a v2 but out of time for the
> > day.  I think I need a #include file to fix errors on x86:
> >
> >> implicit declaration of function 'of_node_is_root' [-Werror,-Wimplicit-function-declaration
>
> Instead of checking "of_node_is_root(parent_node)" the patch could check
> for parent_node not "/reserved-memory".  Then the x86 error would not
> occur.
>
> The check I am suggesting is not as precise, but it should be good enough
> for this case, correct?

Sure, there are a million different ways to slice it.  If you prefer
that instead of adding a dummy of_node_is_root() I'm happy to do that.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
