Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47696120177
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 10:50:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LATWTEeyxlmtkBXdrytNnB2hdCfJwqajgRT4YNAYACU=; b=nXrreEqOXAiJ4xAFrYfueagSC
	/00zvaHdIcqpkTLuG7zRDpXB9+Nh4do57frKhK18XYuQwPGOThfWbcw29Xe0qYO/KQL1npRaogRx1
	JrWPmj45LS8qSz1VhDUTkq/RfCNVpGiTRGmBoCkxODNuCQKloDEMhxdZnG/M0AW9SbwXAlPGDDhnp
	08xbk3ACYkMLX2mnfz4wuPzfLaJZ8XtaErwPPywJyMXhlQtKZPNPRxKRjUUJInZ+O6qJr+EcVAILD
	CjDV/JPz9GPqhMWyocDrns68CEVCuRyePJffuQQRuc5X4kEBipTYdM7rBOECRlSjglyfCe9Y/G4G2
	iJ9XQ8TAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign1N-0003Y9-3e; Mon, 16 Dec 2019 09:50:33 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign1I-0003XW-UW
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 09:50:30 +0000
Received: by mail-il1-x144.google.com with SMTP id x5so1960178ila.6
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 01:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JFnwZ4o2A2lK7cZDY5iJ/y1MAUb5fZXHm3bjB5soJwU=;
 b=VEPSExo05MC7xG8P8qvhwi3HzMTW51LT6G4qNjgrxBgaWEwctD60OSjPQRuHFaaCLS
 VgB9J4aSt7ps1woEdmplFZWUqd0hAYyn0JTAkxgKhLY2IB+L1nmoRqbZi+t0yM53ihDF
 6WmBILhZ/cTPm27l14y6KB2cqIZ5zjhjZDANs+ubB9jNsgOfc3OQW6dMPciLQgds4tGE
 axUd0vqU+77nJ9bMIR25t9l2qLZ9OrTt8vyoyEQJAvZ/45WQssHruius0kij5vC0U5Ye
 MW6rnht0ds0J/YHMZhMex5h/lnOhO6FA/2embYaBw0bBrHDcqwUK0cxrbxMNMrgiYLh0
 6XGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JFnwZ4o2A2lK7cZDY5iJ/y1MAUb5fZXHm3bjB5soJwU=;
 b=FaOJc8CgA8EsMdbWUN1T2mDksVRuwZ8nuO5ztzGKYRZ1H697nuJxkF7wF6FYjPnBvu
 gbsU6x2cd4lWM6Nx8cuajb6k5JCdHcCRT7OPTjaP3aWsZl0HZgJc9RXDt3oumvhvhAtN
 RRW2wkIn+1KQMpUuZZDoILRb9e+NoFIeFkBK1bKa11q88X2LQdba6L4nFcG/AEcBSvgN
 hffHFywxHC/Cg4N5SLffmFpJaNT1mHX+lNBwHpHV4XkskRYLQm0Qc5pffjW8HQJeJPwY
 LPHkHNrI/PBpWsPMZ3pmNvyOByyGRWVuL3f64IjW4qD4+l6zRaCj/OHCzs1B4T9U0LfX
 9l7w==
X-Gm-Message-State: APjAAAX7GD5o2KGicdooX6lDp2TyhNKgET3CeG/wjuXKL8Z9XYqS9M7o
 AcqlSzA5cDzIobjpRrOlYrAd0bvGqazSzDxvt5U=
X-Google-Smtp-Source: APXvYqwjJ95uvLbJt1zvSoKoXvnn7kfYXzzbdDPMQAwazYkLmCXYigbsJvy4gblzXNJlE0g8gefxC3IHExsU+71mhaM=
X-Received: by 2002:a92:9507:: with SMTP id y7mr10996643ilh.243.1576489827802; 
 Mon, 16 Dec 2019 01:50:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575932654.git.robin.murphy@arm.com>
 <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
 <CANAwSgTtzAZJqpsD7uVKskTnDmrT1bs=JuHxnPrkpQKtnZLhvQ@mail.gmail.com>
 <2681192.H4ySjFOPB8@diego>
In-Reply-To: <2681192.H4ySjFOPB8@diego>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 16 Dec 2019 15:20:16 +0530
Message-ID: <CANAwSgTL-9VCFFj-+4xsLZOxKCHtjyN4P6fYnuRSOe7cZRiWew@mail.gmail.com>
Subject: Re: [PATCH 4/4] mfd: rk808: Convert RK805 to syscore/PM ops
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Content-Type: multipart/mixed; boundary="0000000000002e21d20599cf249e"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015029_013320_BDC10E15 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, Soeren Moch <smoch@web.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

--0000000000002e21d20599cf249e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Heiko / Robin / Soeren,

On Mon, 16 Dec 2019 at 01:57, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Anand,
>
> Am Sonntag, 15. Dezember 2019, 19:51:50 CET schrieb Anand Moon:
> > On Tue, 10 Dec 2019 at 18:54, Robin Murphy <robin.murphy@arm.com> wrote=
:
> > >
> > > RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK81=
7,
> > > so it makes little sense for the driver to have to have two completel=
y
> > > different mechanisms to handle essentially the same thing. Bring RK80=
5
> > > in line with the RK809/RK817 flow to clean things up.
> > >
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
>
> [...]
>
> > I am sill getting the kernel warning on issue poweroff see below.
> > on my Rock960 Model A
> > I feel the reason for this is we now have two poweroff callback
> > 1  pm_power_off =3D rk808_device_shutdown
> > 2  rk8xx_syscore_shutdown
>
> Nope, the issue is just the i2c subsystem complaining that the
> Rocckhip i2c drives does not provide an atomic-transfer function, see
>         "No atomic I2C transfer handler for 'i2c-0'"
> in your warning.
>
> Somewhere it was suggested that the current transfer function just
> works as atomic as well.
>
>
> > In my investigation earlier common function for shutdown solve
> > the issue of clean shutdown.
>
> This is simply a result of your syscore-shutdown function running way to
> early, before the i2c subsystem switched to using atomic transfers.
>
> This also indicates that this would really be way to early, as other part=
s
> of the kernel could also still be running.
>

Yes, you are correct syscore-shutdown initiates
shutdown before all the device do clean shutdown.

So for best approach for clean atomic shutdown is to use
  /* driver model interfaces that don't relate to enumeration  */
        void (*shutdown)(struct i2c_client *client);
drop the registration of syscore and use core .i2c_shutdown.

I have prepare this patch on top of this series for RTF
This patch dose clean shutdown of all the devices before poweroff.
see the log below.

*Note*: This feature will likely break the clean reboot feature.
Rockchip device do not perform clean reboot as some of the IP
block are not released before clean reboot and it's remain stuck.
Like PCIe and MMC, We need to look into this as well.

Shutdown log of my RK3399 Rock960 Model A
[0] https://pastebin.com/peYxmzb7
------------------------------------------------------------------------
[  OK  ] Stopped LVM2 metadata daemon.
[  OK  ] Reached target Shutdown.
[  OK  ] Reached target Final Step.
[  OK  ] Closed LVM2 metadata daemon socket.
[  OK  ] Started Power-Off.
[  OK  ] Reached target Power-Off.
[  542.715237] systemd-shutdown[1]: Syncing filesystems and block devices.
[  543.158314] systemd-shutdown[1]: Sending SIGTERM to remaining processes.=
..
[  543.168469] systemd-journald[280]: Received SIGTERM from PID 1
(systemd-shutdow).
[  543.202968] systemd-shutdown[1]: Sending SIGKILL to remaining processes.=
..
[  543.212365] systemd-shutdown[1]: Unmounting file systems.
[  543.214708] [535]: Remounting '/' read-only in with options '(null)'.
[  543.229661] EXT4-fs (mmcblk1p1): re-mounted. Opts: (null)
[  543.239978] systemd-shutdown[1]: All filesystems unmounted.
[  543.240481] systemd-shutdown[1]: Deactivating swaps.
[  543.241052] systemd-shutdown[1]: All swaps deactivated.
[  543.241514] systemd-shutdown[1]: Detaching loop devices.
[  543.244806] systemd-shutdown[1]: All loop devices detached.
[  543.245307] systemd-shutdown[1]: Detaching DM devices.
[  543.245994] systemd-shutdown[1]: All DM devices detached.
[  543.246474] systemd-shutdown[1]: All filesystems, swaps, loop
devices and DM devices detached.
[  543.302732] systemd-shutdown[1]: Successfully changed into root pivot.
[  543.303356] systemd-shutdown[1]: Returning to initrd...
[  543.339679] shutdown[1]: Syncing filesystems and block devices.
[  543.341084] shutdown[1]: Sending SIGTERM to remaining processes...
[  543.348948] shutdown[1]: Sending SIGKILL to remaining processes...
[  543.356551] shutdown[1]: Unmounting file systems.
[  543.359097] sd-umoun[541]: Unmounting '/oldroot/sys/kernel/config'.
[  543.361716] sd-umoun[542]: Unmounting '/oldroot/sys/kernel/debug'.
[  543.364333] sd-umoun[543]: Unmounting '/oldroot/dev/mqueue'.
[  543.366765] sd-umoun[544]: Unmounting '/oldroot/dev/hugepages'.
[  543.369426] sd-umoun[545]: Unmounting '/oldroot/sys/fs/cgroup/memory'.
[  543.372338] sd-umoun[546]: Unmounting '/oldroot/sys/fs/cgroup/perf_event=
'.
[  543.375030] sd-umoun[547]: Unmounting '/oldroot/sys/fs/cgroup/cpu,cpuacc=
t'.
[  543.377744] sd-umoun[548]: Unmounting '/oldroot/sys/fs/cgroup/pids'.
[  543.380620] sd-umoun[549]: Unmounting '/oldroot/sys/fs/cgroup/blkio'.
[  543.383256] sd-umoun[550]: Unmounting '/oldroot/sys/fs/cgroup/hugetlb'.
[  543.386015] sd-umoun[551]: Unmounting '/oldroot/sys/fs/cgroup/devices'.
[  543.389114] sd-umoun[552]: Unmounting '/oldroot/sys/fs/cgroup/cpuset'.
[  543.391817] sd-umoun[553]: Unmounting '/oldroot/sys/fs/pstore'.
[  543.394401] sd-umoun[554]: Unmounting '/oldroot/sys/fs/cgroup/systemd'.
[  543.397245] sd-umoun[555]: Unmounting '/oldroot/sys/fs/cgroup/unified'.
[  543.400083] sd-umoun[556]: Unmounting '/oldroot/sys/fs/cgroup'.
[  543.402654] sd-umoun[557]: Unmounting '/oldroot/dev/pts'.
[  543.405351] sd-umoun[558]: Unmounting '/oldroot/dev/shm'.
[  543.407876] sd-umoun[559]: Unmounting '/oldroot/sys/kernel/security'.
[  543.410313] sd-umoun[560]: Unmounting '/oldroot'.
[  543.410886] sd-umoun[560]: Failed to unmount /oldroot: Device or
resource busy
[  543.413355] sd-umoun[561]: Unmounting '/oldroot/run'.
[  543.415750] sd-umoun[562]: Unmounting '/oldroot/dev'.
[  543.418013] sd-umoun[563]: Unmounting '/oldroot/sys'.
[  543.420892] sd-umoun[564]: Unmounting '/oldroot/proc'.
[  543.423833] sd-umoun[565]: Unmounting '/oldroot'.
[  543.486268] shutdown[1]: All filesystems unmounted.
[  543.486710] shutdown[1]: Deactivating swaps.
[  543.487153] shutdown[1]: All swaps deactivated.
[  543.487556] shutdown[1]: Detaching loop devices.
[  543.490300] shutdown[1]: All loop devices detached.
[  543.490735] shutdown[1]: Detaching DM devices.
[  543.491382] shutdown[1]: All DM devices detached.
[  543.491801] shutdown[1]: All filesystems, swaps, loop devices and
DM devices detached.
[  543.494678] shutdown[1]: Syncing filesystems and block devices.
[  543.495770] shutdown[1]: Powering off.
[  543.496112] kvm: exiting hardware virtualization

-Anand

--0000000000002e21d20599cf249e
Content-Type: application/octet-stream; name="i2c_shutdown.patch"
Content-Disposition: attachment; filename="i2c_shutdown.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k4891t990>
X-Attachment-Id: f_k4891t990

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3JrODA4LmMgYi9kcml2ZXJzL21mZC9yazgwOC5jCmlu
ZGV4IGU4OGJkYjg4OWQzYS4uODIzODAzZGYyZDdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL21mZC9y
azgwOC5jCisrKyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKQEAgLTQ0OCwzNiArNDQ4LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCByZWdtYXBfaXJxX2NoaXAgcms4MThfaXJxX2NoaXAgPSB7CiAKIHN0
YXRpYyBzdHJ1Y3QgaTJjX2NsaWVudCAqcms4MDhfaTJjX2NsaWVudDsKIAotc3RhdGljIHZvaWQg
cms4MDhfZGV2aWNlX3NodXRkb3duKHZvaWQpCi17Ci0JaW50IHJldDsKLQl1bnNpZ25lZCBpbnQg
cmVnLCBiaXQ7Ci0Jc3RydWN0IHJrODA4ICpyazgwOCA9IGkyY19nZXRfY2xpZW50ZGF0YShyazgw
OF9pMmNfY2xpZW50KTsKLQotCWlmICghcms4MDgpCi0JCXJldHVybjsKLQotCXN3aXRjaCAocms4
MDgtPnZhcmlhbnQpIHsKLQljYXNlIFJLODA1X0lEOgotCQlyZWcgPSBSSzgwNV9ERVZfQ1RSTF9S
RUc7Ci0JCWJpdCA9IERFVl9PRkY7Ci0JCWJyZWFrOwotCWNhc2UgUks4MDhfSUQ6Ci0JCXJlZyA9
IFJLODA4X0RFVkNUUkxfUkVHLAotCQliaXQgPSBERVZfT0ZGX1JTVDsKLQkJYnJlYWs7Ci0JY2Fz
ZSBSSzgxOF9JRDoKLQkJcmVnID0gUks4MThfREVWQ1RSTF9SRUc7Ci0JCWJpdCA9IERFVl9PRkY7
Ci0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCXJldHVybjsKLQl9Ci0JcmV0ID0gcmVnbWFwX3VwZGF0
ZV9iaXRzKHJrODA4LT5yZWdtYXAsIHJlZywgYml0LCBiaXQpOwotCWlmIChyZXQpCi0JCWRldl9l
cnIoJnJrODA4X2kyY19jbGllbnQtPmRldiwgIkZhaWxlZCB0byBzaHV0ZG93biBkZXZpY2UhXG4i
KTsKLX0KLQorI2lmIDAKIHN0YXRpYyB2b2lkIHJrOHh4X3N5c2NvcmVfc2h1dGRvd24odm9pZCkK
IHsKIAlzdHJ1Y3Qgcms4MDggKnJrODA4ID0gaTJjX2dldF9jbGllbnRkYXRhKHJrODA4X2kyY19j
bGllbnQpOwpAQCAtNTExLDYgKzQ4Miw3IEBAIHN0YXRpYyB2b2lkIHJrOHh4X3N5c2NvcmVfc2h1
dGRvd24odm9pZCkKIHN0YXRpYyBzdHJ1Y3Qgc3lzY29yZV9vcHMgcms4MDhfc3lzY29yZV9vcHMg
PSB7CiAJLnNodXRkb3duID0gcms4eHhfc3lzY29yZV9zaHV0ZG93biwKIH07CisjZW5kaWYKIAog
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcms4MDhfb2ZfbWF0Y2hbXSA9IHsKIAl7
IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrODA1IiB9LApAQCAtNjQzLDggKzYxNSw5IEBAIHN0
YXRpYyBpbnQgcms4MDhfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKIAl9CiAKIAly
azgwOF9pMmNfY2xpZW50ID0gY2xpZW50OworI2lmIDAKIAlyZWdpc3Rlcl9zeXNjb3JlX29wcygm
cms4MDhfc3lzY29yZV9vcHMpOwotCisjZW5kaWYKIAlyZXQgPSBkZXZtX21mZF9hZGRfZGV2aWNl
cygmY2xpZW50LT5kZXYsIFBMQVRGT1JNX0RFVklEX05PTkUsCiAJCQkgICAgICBjZWxscywgbnJf
Y2VsbHMsIE5VTEwsIDAsCiAJCQkgICAgICByZWdtYXBfaXJxX2dldF9kb21haW4ocms4MDgtPmly
cV9kYXRhKSk7CkBAIC02NTMsMTMgKzYyNiwxNiBAQCBzdGF0aWMgaW50IHJrODA4X3Byb2JlKHN0
cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCiAJCWdvdG8gZXJyX2lycTsKIAl9CiAKKyNpZiAwCiAJ
aWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgInJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250
cm9sbGVyIikpCiAJCXBtX3Bvd2VyX29mZiA9IHJrODA4X2RldmljZV9zaHV0ZG93bjsKLQorI2Vu
ZGlmCiAJcmV0dXJuIDA7CiAKIGVycl9pcnE6CisjaWYgMAogCXVucmVnaXN0ZXJfc3lzY29yZV9v
cHMoJnJrODA4X3N5c2NvcmVfb3BzKTsKKyNlbmRpZgogCXJlZ21hcF9kZWxfaXJxX2NoaXAoY2xp
ZW50LT5pcnEsIHJrODA4LT5pcnFfZGF0YSk7CiAJcmV0dXJuIHJldDsKIH0KQEAgLTY3MCwxOCAr
NjQ2LDQ4IEBAIHN0YXRpYyBpbnQgcms4MDhfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGll
bnQpCiAKIAlyZWdtYXBfZGVsX2lycV9jaGlwKGNsaWVudC0+aXJxLCByazgwOC0+aXJxX2RhdGEp
OwogCisjaWYgMAogCXVucmVnaXN0ZXJfc3lzY29yZV9vcHMoJnJrODA4X3N5c2NvcmVfb3BzKTsK
LQogCS8qKgogCSAqIHBtX3Bvd2VyX29mZiBtYXkgcG9pbnRzIHRvIGEgZnVuY3Rpb24gZnJvbSBh
bm90aGVyIG1vZHVsZS4KIAkgKiBDaGVjayBpZiB0aGUgcG9pbnRlciBpcyBzZXQgYnkgdXMgYW5k
IG9ubHkgdGhlbiBvdmVyd3JpdGUgaXQuCiAJICovCiAJaWYgKHBtX3Bvd2VyX29mZiA9PSByazgw
OF9kZXZpY2Vfc2h1dGRvd24pCiAJCXBtX3Bvd2VyX29mZiA9IE5VTEw7Ci0KKyNlbmRpZgogCXJl
dHVybiAwOwogfQogCitzdGF0aWMgdm9pZCByazgwOF9zaHV0ZG93bihzdHJ1Y3QgaTJjX2NsaWVu
dCAqY2xpZW50KQoreworCWludCByZXQ7CisJdW5zaWduZWQgaW50IHJlZywgYml0OworCXN0cnVj
dCByazgwOCAqcms4MDggPSBpMmNfZ2V0X2NsaWVudGRhdGEoY2xpZW50KTsKKworCWlmICghcms4
MDgpCisJCXJldHVybjsKKworCXN3aXRjaCAocms4MDgtPnZhcmlhbnQpIHsKKwljYXNlIFJLODA1
X0lEOgorCQlyZWcgPSBSSzgwNV9ERVZfQ1RSTF9SRUc7CisJCWJpdCA9IERFVl9PRkY7CisJCWJy
ZWFrOworCWNhc2UgUks4MDhfSUQ6CisJCXJlZyA9IFJLODA4X0RFVkNUUkxfUkVHLAorCQliaXQg
PSBERVZfT0ZGX1JTVDsKKwkJYnJlYWs7CisJY2FzZSBSSzgxOF9JRDoKKwkJcmVnID0gUks4MThf
REVWQ1RSTF9SRUc7CisJCWJpdCA9IERFVl9PRkY7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCXJl
dHVybjsKKwl9CisJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRzKHJrODA4LT5yZWdtYXAsIHJlZywg
Yml0LCBiaXQpOworCWlmIChyZXQpCisJCWRldl9lcnIoJnJrODA4X2kyY19jbGllbnQtPmRldiwg
IkZhaWxlZCB0byBzaHV0ZG93biBkZXZpY2UhXG4iKTsKK30KKwogc3RhdGljIGludCBfX21heWJl
X3VudXNlZCByazh4eF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3Qgcms4
MDggKnJrODA4ID0gaTJjX2dldF9jbGllbnRkYXRhKHJrODA4X2kyY19jbGllbnQpOwpAQCAtNzM3
LDYgKzc0Myw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciByazgwOF9pMmNfZHJpdmVyID0g
ewogCX0sCiAJLnByb2JlICAgID0gcms4MDhfcHJvYmUsCiAJLnJlbW92ZSAgID0gcms4MDhfcmVt
b3ZlLAorCS5zaHV0ZG93biAgPSByazgwOF9zaHV0ZG93biwKIH07CiAKIG1vZHVsZV9pMmNfZHJp
dmVyKHJrODA4X2kyY19kcml2ZXIpOwo=
--0000000000002e21d20599cf249e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--0000000000002e21d20599cf249e--

