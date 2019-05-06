Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDEA156C6
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 01:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4NeDaRZ+Tp6kdqZTUlRaWyoeD89GaVRuuA2vwtG0WY=; b=L0mG57U3ZKFWl9
	1S64Eizptz4S8cimr+y85uY46O2xphXnQvEZ0M+aRRdXMQj6E5sjfSqM3u4Uy/XP2141Ork2/xv3d
	IY8ZYQtQEbMRb+lgQ93QyPHAkzTsZAKM6w6UfCEmopEKWbna98mqlD/9IoQIsk16dZEISZB/DXCtS
	1CHpfqm0uBFdPcRr1YmefgtljtSPYwg61WHH3k3Hkpmu3O5VcDr9W9zoxiI3J3ibRuGPw9nWgATip
	nRQqOp0XQrIyIqZYRP3GtMvxX8w52+qm0VrUAlxuA9LNnhmIVtzD0r5x4zvTaLvj4drtY1mgGFX4b
	QGemEaV6cZ+qvFv7vAHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNnVR-0007up-Os; Mon, 06 May 2019 23:58:49 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNnVO-0007u9-Du
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 23:58:47 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g127so9251004vsd.6
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 16:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mx65sXO1r4vrgQ2kHviuuHpS6yfDT9JxVfsYUs6Yhno=;
 b=XJNA4uFR67wlqSxbXVvJFANNEYgMlJH7KBPzpr3b7DMeji4eUc4UYf6iB8tdfjqLj2
 77oM72iVyJUyg5ERdVepbiioCfuJrdGT64WpTPel7XkYiuWgcVFuRGXKqFaYf/alwG8G
 nTnfmO7nurua4ICMHXTiKYOqKMonbeIU+6AIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mx65sXO1r4vrgQ2kHviuuHpS6yfDT9JxVfsYUs6Yhno=;
 b=mqqvtCjYHlTQokjCmUU6fVSCkKttJeLmyKWpAyKelo5qOJgW5pIKPwC980lRNLu8Au
 bI/BPztuT+9K8IMSDB7lyai48beXx1LDpx0ZnPwl08I+5DXgPx0EqOQkiyw6wYmE0pcV
 GUYKo/+sw2PaYtEXz1eyTM122w4c6FDoTJjWJKYWdcn86p6VgupvfNnCwPlrzzLv1vLR
 X3Vl1ZmWY9OrQKQ2aM/9HciErmlL+xI2P9WvJTDuP52IZVXhpW2ZgqbrP2svQSqhoVv+
 ZpG82/+t4UGSBtEkYsXs2Q+yaTuivdjTW/kXMibxRRceUzO7vDSFuG5TiP/G6UFjxCkE
 XNcA==
X-Gm-Message-State: APjAAAV26OP5k5/PH4Qd+eeAGFeDMQFvzWGshh8/8OD0gEzgl1NqXFZo
 7wrG//r0x4WkxmRUde73vOHO31VpCgE=
X-Google-Smtp-Source: APXvYqxYFxb+JM5M8haDWf6kMPq5cvlkjc8WOcaRzVzTpSTYyl+8prkcF2ChUJF5DqmyXEPFnXeyaQ==
X-Received: by 2002:a67:7617:: with SMTP id r23mr14929193vsc.171.1557187124261; 
 Mon, 06 May 2019 16:58:44 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com.
 [209.85.217.43])
 by smtp.gmail.com with ESMTPSA id 15sm2160478vkg.16.2019.05.06.16.58.43
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 16:58:43 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id o10so9238133vsp.12
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 16:58:43 -0700 (PDT)
X-Received: by 2002:a67:af10:: with SMTP id v16mr9106628vsl.149.1557187122785; 
 Mon, 06 May 2019 16:58:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
In-Reply-To: <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 May 2019 16:58:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
Message-ID: <CAD=FV=WcjfUwH62bHVELOmzViv7d329r6+HfPqAyXMjKCO7LeQ@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_165846_495009_943CE2D6 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Tony Luck <tony.luck@intel.com>, Anton Vorontsov <anton@enomsg.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, May 6, 2019 at 2:10 PM Kees Cook <keescook@chromium.org> wrote:
>
> From: Douglas Anderson <dianders@chromium.org>
> Date: Fri, May 3, 2019 at 10:48 AM
> To: Kees Cook, Anton Vorontsov
> Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
> <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
> Douglas Anderson, Colin Cross, Tony Luck,
> <linux-kernel@vger.kernel.org>
>
> > When you try to run an upstream kernel on an old ARM-based Chromebook
> > you'll find that console-ramoops doesn't work.
> >
> > Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> > ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> > used to create a "ramoops" node at the top level that looked like:
> >
> > / {
> >   ramoops {
> >     compatible = "ramoops";
> >     reg = <...>;
> >     record-size = <...>;
> >     dump-oops;
> >   };
> > };
> >
> > ...and these Chromebooks assumed that the downstream kernel would make
> > console_size / pmsg_size match the record size.  The above ramoops
> > node was added by the firmware so it's not easy to make any changes.
> >
> > Let's match the expected behavior, but only for those using the old
> > backward-compatible way of working where ramoops is right under the
> > root node.
> >
> > NOTE: if there are some out-of-tree devices that had ramoops at the
> > top level, left everything but the record size as 0, and somehow
> > doesn't want this behavior, we can try to add more conditions here.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> I like this; thanks! Rob is this okay by you? I just want to
> double-check since it's part of the DT parsing logic.
>
> I'll pick it up and add a Cc: stable.

Hold off a second--I may need to send out a v2 but out of time for the
day.  I think I need a #include file to fix errors on x86:

> implicit declaration of function 'of_node_is_root' [-Werror,-Wimplicit-function-declaration

I'm unfortunately out of time for now, but I'll post a v2 within the next day.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
