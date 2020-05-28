Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F274E1E6B22
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 May 2020 21:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICLOxZxcldOh9tz5+1zik6KVoQUFvqqeTgGQWQy0I4M=; b=muSVnCfgbLC35j
	OuAgmAFeJacT/teK0w0ozYkJ7OMg3e30Q2FuYPZ6ZlN6wtO3VuWXZnI/c7zln3ykGDq8cOl/P9TFJ
	ml/hUpDdghPUOuDpoC8OFAxh0qLTN1yz10g177Q7p3hN94Uy0EQkiElcItnQfQa9+dvds6g6p+zD2
	uxSOsh3qpSOAUZH82zIVhk5zWP/FP3ED9PwxhGOMWACM8lc//CvGyugQQ/jZH1RZNUxGOipAZbpCc
	Pah1mxvvYx9LVOhj4goYKoFc2f6he4LnwZbsPUiM2TZPAAEC8YWrGhGorNTr/ABTLhJXhsMsajxj6
	3XyA/zBL/YwhTGUJ7Vxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOJp-0005eo-7K; Thu, 28 May 2020 19:35:57 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOJm-0005eL-AY
 for linux-rockchip@lists.infradead.org; Thu, 28 May 2020 19:35:55 +0000
Received: by mail-ej1-x644.google.com with SMTP id n24so1265634ejd.0
 for <linux-rockchip@lists.infradead.org>; Thu, 28 May 2020 12:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nqW3djALsxiW8xcZNR9N6+CiFQBGXa010/gGbeC7zf8=;
 b=K+qgDjOPpGOD92TeM0dxJ6BMbDtrbjReB16r6u0byQd6rQEy3yqpjvCHxFBHdRpY75
 6VErgrdtkqoziHpDFqqBMXp0OlycSswgYfaZzkjLFVWWFjokayqxACLlsywKG2KBDch/
 Cs/nedlmJ+cWqKbIB5QlnygYM2rxa/mQIR0T0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nqW3djALsxiW8xcZNR9N6+CiFQBGXa010/gGbeC7zf8=;
 b=tPdE2XE3o+tcFmE8sbBsAex8Y3ZDWX1usUGAC8Qf1Up3vJbebEpW+FgeEjMbkuE1Ok
 LPfz13ntWr+u2o5mAEtOWy6f5OQfiFJF3/MBBMGPTqEa9Nr8rBQSX9S4HauOyor2fJcr
 l4jtq46RMynQXVLpI+ZH1gEQbOCg0XJKFveMaWO/P9ZTdCFyBJlPKc++wzG+M7e7WOXO
 gcxRedMrcpStgoPE0REyjDw6HzKCuLD6FfphLpLdqv4ziA/Gx5w+jIKDgW0TqYEFgYk1
 ODSneZDddQpu9HYcqr54y4YaRlUwo2naBnSm0HNVa7zKnJdm6kAu9K5ubh7yk5ULdEP8
 7q1g==
X-Gm-Message-State: AOAM532s4BfiqPeGw/DScpPTObDDSl799lnqGFthGP7GbAUOUVnnqfcT
 /HnwYy+EdyY4Rq2apfzq2LP+lvA/KPTYJQ==
X-Google-Smtp-Source: ABdhPJy/NgKLjPO3c/v1+Yb83rF1ypPLTVhCYJ6D4T4m+AGVvLhITXxrdCsJy0RsAop69gvA/BYzcw==
X-Received: by 2002:a17:906:4303:: with SMTP id
 j3mr3812548ejm.364.1590694551053; 
 Thu, 28 May 2020 12:35:51 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51])
 by smtp.gmail.com with ESMTPSA id u20sm5258022edy.80.2020.05.28.12.35.50
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 12:35:50 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id f185so288998wmf.3
 for <linux-rockchip@lists.infradead.org>; Thu, 28 May 2020 12:35:50 -0700 (PDT)
X-Received: by 2002:a7b:c622:: with SMTP id p2mr4855741wmk.55.1590694549758;
 Thu, 28 May 2020 12:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-6-dafna.hirschfeld@collabora.com>
 <20200521000901.GE25474@pendragon.ideasonboard.com>
 <CAAFQd5AKrbtYMN+h6phaOYveNoUZptVdy+KD-Ef1+on_HXenyA@mail.gmail.com>
 <8eaaaf8e-2272-3c74-7c8a-6c320f72bc7a@collabora.com>
In-Reply-To: <8eaaaf8e-2272-3c74-7c8a-6c320f72bc7a@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 28 May 2020 21:35:39 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Dkx6D6RZ3rCiftuXOBpP5Qvv292swQJ8bEBiEZVLaogg@mail.gmail.com>
Message-ID: <CAAFQd5Dkx6D6RZ3rCiftuXOBpP5Qvv292swQJ8bEBiEZVLaogg@mail.gmail.com>
Subject: Re: [PATCH 5/5] media: staging: rkisp1: replace workqueue with
 threaded irq for reading statistics registers
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_123554_382370_69D8C696 
X-CRM114-Status: GOOD (  36.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 9:19 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> Hi, Tomasz, Laurent, and everyone
>
> On 21.05.20 12:38, Tomasz Figa wrote:
> > Hi Dafna,
> >
> > On Thu, May 21, 2020 at 2:09 AM Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> >>
> >> Hi Dafna,
> >>
> >> Thank you for the patch.
> >>
> >> On Tue, May 12, 2020 at 02:05:22PM +0200, Dafna Hirschfeld wrote:
> >>> Reading the statistics registers might take too long
> >>> to run inside the irq handler. Currently it is deferred
> >>> to bottom half using workqueues. This patch replaces the
> >>> workqueue with threaded interrupts for reading the
> >>> statistics registers.
> >>
> >> Could you please explain why this is needed/desired ? Removal of the
> >> kzalloc(GFP_ATOMIC) is very nice, but I'm sure there would have been
> >> ways to avoid it while keeping a workqueue. I'm not claiming the patch
> >> is bad, but I'd like to understand the reason.
> >>
> >
> > Thanks a lot for working on this driver!
> >
> > I'll second what Laurent said. In general, a description of the patch
> > should explain why a change is needed, e.g. what issues it fixes or
> > what improvements it brings.
>
> So from what I understand, the correct way to handle bottom half is
> using threaded interrupts since they run in higher priority.
> In case of this statistics reading for example, we want to read the stats
> as fast as possible once we recieve the interrupt. If we read the stats too
> long after the interrupt was recieved, then the values in the stats registerd
> might have changed by then. Does that make sense?
>
> I use the rockpi4 board to test the code and actually I did an experiment
> of moving the code that reads the stats into the hard irq and it ran
> fine. Maybe you know why the code is currently in a work queue and not
> inside the hard irq? Also, the params struct is of size 5337 bytes and
> the params subdevice can potentionaly run a lot of registers writing but
> for some reasone the code of writing to the params registers still runs
> inside the hard irq.
>

Actually I now recall that we already discussed this in the past with
Ezequiel and Helen and I even measured the time needed to readout the
statistics registers and it was consistently taking between 23 to 40
microseconds. We concluded that it could be just done in the hardirq
handler.

I've added you to that email thread.

> >
> > Also, would you mind adding me on CC for any patches for this driver?
> > Since we use this driver in Chrome OS, I'd like to stay on top of any
> > updates. Thanks in advance!
> sure!
>

Thanks!

[snip]
> >>> -static void
> >>> -rkisp1_stats_send_measurement(struct rkisp1_stats *stats,
> >>> -                           struct rkisp1_isp_readout_work *meas_work)
> >>> +irqreturn_t rkisp1_read_stats_threaded_irq(int irq, void *ctx)
> >>>   {
> >>> +     struct device *dev = ctx;
> >>> +     struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
> >>> +     struct rkisp1_stats *stats = &rkisp1->stats;
> >>> +     struct rkisp1_kstats_buffer *kstats_buf = NULL;
> >>>        struct rkisp1_stat_buffer *cur_stat_buf;
> >>> -     struct rkisp1_buffer *cur_buf = NULL;
> >>> -     unsigned int frame_sequence =
> >>> -             atomic_read(&stats->rkisp1->isp.frame_sequence);
> >>> -     u64 timestamp = ktime_get_ns();
> >>>        unsigned long flags;
> >>> -
> >>> -     if (frame_sequence != meas_work->frame_id) {
> >>> -             dev_warn(stats->rkisp1->dev,
> >>> -                      "Measurement late(%d, %d)\n",
> >>> -                      frame_sequence, meas_work->frame_id);
> >>> -             frame_sequence = meas_work->frame_id;
> >>> -     }
> >>> +     u64 timestamp = ktime_get_ns();
> >>>
> >>>        spin_lock_irqsave(&stats->stats_lock, flags);
> >>> -     /* get one empty buffer */
> >>> -     if (!list_empty(&stats->stat)) {
> >>> -             cur_buf = list_first_entry(&stats->stat,
> >>> -                                        struct rkisp1_buffer, queue);
> >>> -             list_del(&cur_buf->queue);
> >>> +     if (!stats->is_streaming) {
> >>> +             spin_unlock_irqrestore(&stats->stats_lock, flags);
> >>> +             return IRQ_HANDLED;
> >>> +     }
> >>> +     if (list_empty(&stats->stat)) {
> >>> +             spin_unlock_irqrestore(&stats->stats_lock, flags);
> >>> +             WARN("%s: threaded irq waked but there are no buffers",
> >>> +                  __func__);
> >>> +             return IRQ_HANDLED;
> >>> +     }
> >>> +     kstats_buf = list_first_entry(&stats->stat,
> >>> +                                   struct rkisp1_kstats_buffer, buff.queue);
> >>> +
> >>> +     /*
> >>> +      * each waked irq thread reads exactly one ready statistics
> >>> +      * so it is a bug  if no statistics are ready
> >>> +      */
> >>
> >> What happens if this function takes too long to run ? With the
> >> workqueue, if the work gets delayed once in a while, the work items will
> >> accumulate, and all of them will be handled eventually. Here it seems
> >> that an IRQ could get lost.
>
> If the irs runs and there are no available buffers then indeed we lost the interrupt.
> You think it might be a problem if userspace expect an associated stats buffer
> for every recieved frame?
> Also with workqueue we will lose the stats if we don't have an available buffer
> when the workqueue runs.

I believe this hardware doesn't do any buffering internally, so if one
doesn't read the statistics in time, the values are lost, because they
are overridden with the ones coming from the next frame. So actually
hardirq might be a better context to do the read-out indeed.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
