Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D771E3271
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 00:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3EXtJiXorCpFI+jXKV8wSq9z14WUv3ySSHf5XFFylI=; b=ftp/QVrPhTzpNe
	mkvHbKjb5m8nEnMvtgrj3Zg/uhGoDKQW/pTi5vXGj4DnHb6ERjwt8lZXxmZy9BhtVuaj9a/aSCdng
	ZuUFb+98YAn4ZRQuvLLF54sygPkd4Zyl37TXBo8QBWOk+dDPBnOLAyh9VrfNMW5ATPKY2DMEuOP2j
	LqtVf+XdCbyQVauUejWr9UcOmH/D/00EZCH0f5yvPQZDwANoWOdBcW521f3dM/l2RMJc6yTsYlnDu
	XFsX/8spNfjAWk6dBuH812rfHtUhUZQe+ma+ezT9yC159KLfb8Q40X4UDQXvkdPN5GlAXf9EtktGK
	ypHH/ghXP6Kg2K4YkXSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdi1h-0003u9-UU; Tue, 26 May 2020 22:26:25 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdi1e-0003tX-8P
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 22:26:23 +0000
Received: by mail-ed1-x543.google.com with SMTP id l5so19015723edn.7
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 15:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QQW0K1swTiwj5Gcu5iuhS+qDsYzT0alcFdI4CL3m41I=;
 b=bDPSov4ysDsc+cciSnP0jHTbAmW4Ywk+WvbT5YpTQWJe5uK8IAl47+OBwmAYv8/k2s
 Y3O+KVfiioPBGgN9OHBCpwKks7r55Lz6jtbG2pAbjnjoYsIL+49T9xm54YCn2Kr2kyFb
 ecFNXZKThl9Ogd+XVLmRA+xEp2sjgsSgho/2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QQW0K1swTiwj5Gcu5iuhS+qDsYzT0alcFdI4CL3m41I=;
 b=ftv4ZRbw6Yu/tKAn8MweXpRfOGiVaqeuk6Xf8ZEzFWhZ5mSbp8Mhl4+v3kL67FSvr5
 Jx8wS6ZV2Qf5pM02rT/YQGIbJ+kH5u68TZfTtkD+ey76VO3CSOkpYNIgRjkXNTRzBoCj
 p4UfkhM/p/GCKQffUhBpx1fLLQi2IU2EJTU0vnKRSBoxFbj93h4E5m1MemuCaksbLnZu
 QxPE+nmVVB5pC4fAxxIXKsWk+GNXRHNUt3jO1GukYDIN/7beY3RTLEl27ZPyYq1OxQJ4
 /EHCffRe2TKPw+iDdYt4zi8W4DTKVNTsbIVdCnLACizXzCZ8/wTniD4HdTlQBdwS9iLF
 9GFg==
X-Gm-Message-State: AOAM531Zz+3sIR4fM08R2eI//GUllEActWEQ0d0zI66FYv78gP0UMGNK
 222sd7vx/6Mez9P0LIEayfaRM8yH2FySfw==
X-Google-Smtp-Source: ABdhPJwapUxEeKUyTpquqtCbJDyqiiaYNwQrd39BdbLZuOzKjMu7rTrkKNjKQvgS9CTG6X0rx9yCFA==
X-Received: by 2002:a05:6402:1775:: with SMTP id
 da21mr22571370edb.271.1590531979412; 
 Tue, 26 May 2020 15:26:19 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com.
 [209.85.128.49])
 by smtp.gmail.com with ESMTPSA id nj6sm853596ejb.99.2020.05.26.15.26.17
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 15:26:18 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id k26so724133wmi.4
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 15:26:17 -0700 (PDT)
X-Received: by 2002:a7b:c622:: with SMTP id p2mr1221914wmk.55.1590531977253;
 Tue, 26 May 2020 15:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-3-dafna.hirschfeld@collabora.com>
 <2606d729-7418-109b-f514-3b9eb834187c@collabora.com>
 <4bd94509-79af-16db-3721-2553508a6c42@collabora.com>
 <d0c93454-8a51-a28c-639d-948041fc602a@collabora.com>
 <9a0a91d50bdaa19378ef21de5c81abeef476429a.camel@collabora.com>
 <f8fa01a3-c0f1-9fc5-1fb8-b4fe91e8fc74@collabora.com>
 <5a4e994d9b5b702205301a9b72bef2d013d4e106.camel@collabora.com>
In-Reply-To: <5a4e994d9b5b702205301a9b72bef2d013d4e106.camel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 27 May 2020 00:26:05 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Di0hJKMo1NB6DJSRL5FMnK1sVtuhD0BhcKSUGTXd66sQ@mail.gmail.com>
Message-ID: <CAAFQd5Di0hJKMo1NB6DJSRL5FMnK1sVtuhD0BhcKSUGTXd66sQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: use hdiv, vdiv of
 yuv422 instead of macros
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_152622_315626_697BE15D 
X-CRM114-Status: GOOD (  28.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 5:05 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Fri, 2020-05-22 at 16:15 +0200, Dafna Hirschfeld wrote:
> >
> > On 22.05.20 15:31, Ezequiel Garcia wrote:
> > > Hi Dafna, Helen,
> > >
> > > On Fri, 2020-05-22 at 14:11 +0200, Dafna Hirschfeld wrote:
> > > > On 21.05.20 00:08, Helen Koike wrote:
> > > > > On 5/20/20 6:54 PM, Helen Koike wrote:
> > > > > > Hi Dafna,
> > > > > >
> > > > > > On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> > > > > > > The resize block of rkisp1 always get the input as yuv422.
> > > > > > > Instead of defining the default hdiv, vdiv as macros, the
> > > > > > > code is more clear if it takes the (hv)div from the YUV422P
> > > > > > > info. This makes it clear where those values come from.
> > > > > > > The patch also adds documentation to explain that.
> > > > > > >
> > > > > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > > >
> > > > > > Acked-by: Helen Koike <helen.koike@collabora.com>
> > > > > >
> > > > > > Thanks!
> > > > > > Helen
> > > > > >
> > > > > > > ---
> > > > > > >    drivers/staging/media/rkisp1/rkisp1-resizer.c | 25 +++++++++----------
> > > > > > >    1 file changed, 12 insertions(+), 13 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > > index d049374413dc..04a29af8cc92 100644
> > > > > > > --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > > +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > > @@ -16,9 +16,6 @@
> > > > > > >    #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
> > > > > > >    #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
> > > > > > >
> > > > > > > -#define RKISP1_MBUS_FMT_HDIV 2
> > > > > > > -#define RKISP1_MBUS_FMT_VDIV 1
> > > > > > > -
> > > > > > >    enum rkisp1_shadow_regs_when {
> > > > > > >     RKISP1_SHADOW_REGS_SYNC,
> > > > > > >     RKISP1_SHADOW_REGS_ASYNC,
> > > > > > > @@ -361,11 +358,12 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
> > > > > > >    static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> > > > > > >                           enum rkisp1_shadow_regs_when when)
> > > > > > >    {
> > > > > > > -   u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
> > > > > > >     struct v4l2_rect sink_y, sink_c, src_y, src_c;
> > > > > > >     struct v4l2_mbus_framefmt *src_fmt;
> > > > > > >     struct v4l2_rect *sink_crop;
> > > > > > >     struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
> > > > > > > +   const struct v4l2_format_info *yuv422_info =
> > > > > > > +           v4l2_format_info(V4L2_PIX_FMT_YUV422P);
> > > > > > >
> > >
> > > Instead of hardcoding this fourcc, is there any way we can
> > > retrieve it from a configured format?
> > >
> > What do you mean?
> > If the configured format is bayer then the resizer is disabled.
> > Otherwise the resizer always get the input as yuv422, this is why it is hard coded.
> >
>
> I don't like to rely on these assumptions/knowledge.
> It's much cleaner to retrieve the format, and avoiding
> hardcoding things as much as you can.

It would indeed be cleaner if we could retrieve this format from
somewhere, but where would that be? In theory we could assign a
YUV4:2:2 mbus format to the resizer input pad, but I think there is no
similar data available for mbs formats, is there?

Actually, if we look at this a bit more strictly, V4L2_PIX_FMT_YUV422P
is not exactly what the resizer gets at its input.
V4L2_PIX_FMT_YUV422P is a specific memory representation and the
corresponding v4l2_format_info struct contains data about the memory
layout. The resizer gets an unspecified YUV 4:2:2 pixel stream. Making
the code suggest that it's V4L2_PIX_FMT_YUV422P might make it more
confusing in another way.

Perhaps the way forward would be to simply add a comment explaining
where the 2 and 1 dividers come from?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
