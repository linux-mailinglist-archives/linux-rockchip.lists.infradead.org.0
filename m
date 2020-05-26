Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFBB1E2691
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 18:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/beuifh0p9DKwnvmMJEPLdIDdkTdFjTMxgXRHnRgVA=; b=jWbC6yTWSDFnCF
	XKkLfruiEROZMcIDJ9iunVkP2rw9XVAKnK2sdvKfgQUjXaV8TcTB+9FUf7K29R7COLOmTglMpasA2
	clGJBNsNV8pTLH1cmzm1E9nXP4ZtYHyZvN7wOrUnhYVuISSxH7JfvDQeYgSDG+0aKz1omKA5Fi1QW
	rN7tgmk7ohg/Q9NyqJd+jstBksYtfL2mLd0UesYObmhegFYzyme3IkoPYCJFNatxhWBDqDtv4Sy7h
	cP3zLRXoiCGNBUQkr5sln+CTZQZB4LfkO4uepsr9ixulmD/hXqRiZLd3T7PeINhD0A8JQGdzK+/LU
	ylIMEPOW42ThZ2rvdFww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcAi-0004nW-EX; Tue, 26 May 2020 16:11:20 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcAg-0004mg-04
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 16:11:19 +0000
Received: by mail-ej1-x643.google.com with SMTP id z5so24472696ejb.3
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 09:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nNOos2c6iZoOXta5GorQWquBhxDd60toEGScglAIDL0=;
 b=lK76QkT2rO2CuASpxiFE2G3UCpArCPxIZJL/SZLZZIal8CbdgPxBLKHeclPX0dPCoz
 07u1BizROWCUJb9wgpRDyTyCy5S7epv4wVelir9A/xYQ/vOqZ45i3D430HiOma5EHQWM
 NVDxuuH4pLIzZdxFQrJMsrJKJulXB1+PdTPjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nNOos2c6iZoOXta5GorQWquBhxDd60toEGScglAIDL0=;
 b=ugQOHptuLuOZHKL4NJnNxyLwmzvWa+kWx05gUJaeX92pxmYaLHtyf+gv1wmOT4JG65
 HsXHV2e5eCF7pc6Vxl4RjmyahEObUAbt2tHG7eFvVAiWjUStKElDP3g7vmfT7AQolUy6
 zcfl5onzuQ9ld6c6yfSZv0fSgRt0Z/O9shSyL+OFRDpGaMnPKjhkjDKSuKaG9ijtYPqy
 fwIbZLQ8awFfI+gv26JAjvZ0oAfxULNpNYo2eNYM4Kjc8LmtQ0eEEuRyio+wNPZ6tdA9
 JvmL8qubfsg/9KHvVWwxdgao6LSw+plJsrUuG28j/FdUTXHFhJwQc5vlV81IRNsVmO/+
 d50A==
X-Gm-Message-State: AOAM531bs1y97/cXwuqW6SQPbc17lEbteL4fpeXXRGDsOo8zZxP7+T9D
 NQBmk8LNJiDurqB/Z/H1mz/0gnMzk2q0xA==
X-Google-Smtp-Source: ABdhPJzxwCFWgc7V76txolF3jx5QnBTEzlfhKqesAZAhVaHEC9tVTrIMUarNG1BNZvKCfYslM7aHDw==
X-Received: by 2002:a17:906:2b4f:: with SMTP id
 b15mr1705889ejg.64.1590509474956; 
 Tue, 26 May 2020 09:11:14 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id c15sm270637ejx.62.2020.05.26.09.11.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 09:11:13 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id u26so322737wmn.1
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 09:11:12 -0700 (PDT)
X-Received: by 2002:a7b:c622:: with SMTP id p2mr2046827wmk.55.1590509472260;
 Tue, 26 May 2020 09:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
In-Reply-To: <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 26 May 2020 18:11:00 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
Message-ID: <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_091118_056525_61079AD9 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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
Cc: niklas.soderlund@ragnatech.se--annotate,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:06 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Hi Dafna,
>
> Thanks for working on this.
>
> On 5/22/20 4:55 AM, Dafna Hirschfeld wrote:
> > Hi,
> > This is v4 of the patchset that was sent by Helen Koike.
> >
> > Media drivers need to iterate through the pipeline and call .s_stream()
> > callbacks in the subdevices.
> >
> > Instead of repeating code, add helpers for this.
> >
> > These helpers will go walk through the pipeline only visiting entities
> > that participates in the stream, i.e. it follows links from sink to source
> > (and not the opposite).
> > For example, in a topology like this https://bit.ly/3b2MxjI
> > calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
> > .s_stream(true) for rkisp1_resizer_selfpath.
> >
> > stream_count variable was added in v4l2_subdevice to handle nested calls
> > to the helpers.
> > This is useful when the driver allows streaming from more then one
> > capture device sharing subdevices.
>
> If I understand correctly, this isn't  true anymore right? Nested calls aren't
> possible anymore since this version doesn't contain stream_count in struct v4l2_subdevice.
>
> Documentation of v4l2_pipeline_stream_*() should also be updated.
>
> Just to be clear, without the nested call, vimc will require to add its own
> counters, patch https://patchwork.kernel.org/patch/10948833/ will be
> required again to allow multi streaming.
>
> Also, patch "media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}"
> is cleaner in the previous version (with stream_count in struct v4l2_subdevice).
>
> All drivers that allows multi streaming will need to implement some special handling.
>
> Adding stream_count in struct v4l2_subdevice still seems cleaner to me. I'd like to hear
> what others think.

I certainly would see this reference counting done in generic code,
because requiring every driver to do it simply adds to the endless
amount of boiler plate that V4L2 currently requires from the drivers.
:(

I wonder if it wouldn't be possible to redesign the framework so that
.s_stream() at the subdev level is only called when it's expected to
either start or stop this particular subdev and driver's
implementation can simply execute the requested action.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
